cask "thunderbird@daily" do
  version "151.0a1,2026-03-25-10-40-26"

  language "cs" do
    sha256 "85c5e31a09e3b1887973b601bf7d0f4ed34e1467291afea62bc4e08e8e08334a"
    "cs"
  end
  language "de" do
    sha256 "86ab22260806c03506b2def88506b6cd516b1b83317177ea77c6902b9c589442"
    "de"
  end
  language "en-GB" do
    sha256 "b0d4b2f8a6083ab71a412bc860940d35226787ce21f665a876f182c80a564b1b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "39a9fa3a64c82fb44470560caf51bb211bbd59cabba9371487ad42f047031dbe"
    "en-US"
  end
  language "fr" do
    sha256 "b6d46a850ff9926d92f4874c275804ce041f8a9cb491a1d507c237614b73f95c"
    "fr"
  end
  language "gl" do
    sha256 "469b9a975c2eb8e7bf645c9eca0d854c6e3351bce8d3d3b0dd93c950c7354d59"
    "gl"
  end
  language "it" do
    sha256 "b04009fed12537715cd897523043491fda9da7dea895e1ddc6fed759e15b84ef"
    "it"
  end
  language "ja" do
    sha256 "92eb4d39847284e68a6f62787b696c037fbb8e3f981d7d62f8c676a8557cd707"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4a13c73945a17aee4419783a2076e1c64345813bf81d74d1231b4f176c5ce50f"
    "nl"
  end
  language "pl" do
    sha256 "d74ae9f7bfa74d441ed423a5e580f594efa049607b4bf00520dd826bd053e2a4"
    "pl"
  end
  language "pt" do
    sha256 "3dbfa9d0bb8d2bdcf84c59bc745145fd9a341260a58a62d859f8e424e3131845"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6b204d779375a0fb5a243f0c0084daa0cbd55f4a83048afa851898b49f9eae48"
    "pt-BR"
  end
  language "ru" do
    sha256 "6e08a5d97ab4a75c5147189530955027ec25bfbb073b91163b84c43ee14cabc6"
    "ru"
  end
  language "uk" do
    sha256 "67e02198feab2b347efece2d2701558f74982f06316af89061c206f5524ebf17"
    "uk"
  end
  language "zh-TW" do
    sha256 "6e60decc6fe2f881749f66dc7c163c0e91c71464ae0c13833966f7280b92e49d"
    "zh-TW"
  end
  language "zh" do
    sha256 "16dcdab9eb404925fd76252f5f1186f398497cbb2ead244fd8eb97b346a621c8"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
