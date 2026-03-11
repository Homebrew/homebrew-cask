cask "thunderbird@daily" do
  version "150.0a1,2026-03-11-10-03-29"

  language "cs" do
    sha256 "0349f5920eb476de93c40beb0e7cf147c3f291288ae001bf3b98c63f0c337ffe"
    "cs"
  end
  language "de" do
    sha256 "a493e15e17165c3944f7840c01734eb90c0450b78d9c52b6c7c17a3ec0813572"
    "de"
  end
  language "en-GB" do
    sha256 "1d71a708399b9bb4f54d5267979989aeddbd16140ab174f14f35b3e109df1656"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e174665a8738608f23a7979c78f0419055929b6fdaadf69b2b08aa85dcadba58"
    "en-US"
  end
  language "fr" do
    sha256 "f15a5f6cf662254298703cd24e35e8f50da2f789faaf31247e9913080400cfac"
    "fr"
  end
  language "gl" do
    sha256 "e6709dce9f6b48f8782d587cc24de6f29fade095fe923b20fa39a07aac8dac4b"
    "gl"
  end
  language "it" do
    sha256 "7f2d4a0dcfd7a0cbbbc7194b859a4a37315b34629f1db070932de0212e408707"
    "it"
  end
  language "ja" do
    sha256 "2fd669fefc67df11107f951ae36ddd0410763d05775dfe41d213dcd85a161cb2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "770fed9dc6003d1a31c3a2639d871321dd806761a1dc1a3d4aa05c3a9e2a4a23"
    "nl"
  end
  language "pl" do
    sha256 "58e29d1793c8d2181a1594c22aa5e7bcec4dbd22cba7d3828a2d19737e0b9d27"
    "pl"
  end
  language "pt" do
    sha256 "472292204ef568279d4eb37640c94494f79a499b31885d185a8708aa6564982a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "cba1db622567dc9829aebfe3d7bed4e7ad603f8dedbb71964b45012629c5d616"
    "pt-BR"
  end
  language "ru" do
    sha256 "875cd54f4858715f425c95e0a1691f2d8fd4f6c5b448c131e5000559ff1f1200"
    "ru"
  end
  language "uk" do
    sha256 "6d345c74efe3df955b2454f2facebdd6fba9d8afd90d31ca03d4943929f7288f"
    "uk"
  end
  language "zh-TW" do
    sha256 "4975207baf34f5653c8c4d87444fec9adf79d83aa6d86a018205317a9978db65"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ee523c7ef178f4e18cea9e968bcf9fd858423fc16cf02fe18692bb57b232fe6"
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
