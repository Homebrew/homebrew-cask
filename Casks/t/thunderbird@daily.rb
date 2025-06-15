cask "thunderbird@daily" do
  version "141.0a1,2025-06-15-10-15-17"

  language "cs" do
    sha256 "ddebc085bdc867717f270c7b8aa6c3ecba833e45c821a3964d585b004b00be0a"
    "cs"
  end
  language "de" do
    sha256 "409c08f3915d2be85982a2e0854a1cc52ba2a983f4afc17c81a2bdef908c601e"
    "de"
  end
  language "en-GB" do
    sha256 "e5e234f27dcdd2d5706d81b918687b48fed9633708efa6e6e83ad32e1e3c033d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "529dbf87c3e70f20a77d4507963146e3981f42deafbc50d825e2c4c34a696448"
    "en-US"
  end
  language "fr" do
    sha256 "9cc1b4556e31512596045ef6101e5c829afcce6a9bf126c57b8671c196da77ad"
    "fr"
  end
  language "gl" do
    sha256 "17e274e02f6952fe1a9a15d8944fd4f42d3c9921f52085296bab3e4917e4b569"
    "gl"
  end
  language "it" do
    sha256 "dd02e16ba6c20701f786802bacf2026b9c0ad7099366ee87bfb5a0d41c536cc0"
    "it"
  end
  language "ja" do
    sha256 "af046838b3efbb79a5d807a061c5a87f87477847b14100fb5142454f8f647148"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bc83463018f6a291b21c46a5876db5fd0395bb2429110ef45d93ec7be6aa6fce"
    "nl"
  end
  language "pl" do
    sha256 "6859dba7d935052d7cd9e74abe31915abb136eb626dcbdaf129c4229e60cebd9"
    "pl"
  end
  language "pt" do
    sha256 "e8f1ee3188d546483c71b2b248e07f4df3cad557200cf4095c91ab87e4265107"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7488b3fa2e460e160d75027c414f9959448da3e20ae0e2da986bb35ba235731b"
    "pt-BR"
  end
  language "ru" do
    sha256 "9647fcdef6992f701912a34002fc6bad1e09a23d4b79d01f0403e0c5bf224f83"
    "ru"
  end
  language "uk" do
    sha256 "a31a8c265ecb2197a353348144abda0137e08fea8ba03be4118ea07f452d2b58"
    "uk"
  end
  language "zh-TW" do
    sha256 "55f254bdcdb2cb1efa19e0632d21948b7a52d16c3a5ae4eb9171a17bc6397bff"
    "zh-TW"
  end
  language "zh" do
    sha256 "3209dd991f68b52e2c46ace8ab7037579d174f36ef2233d1e151607205039cb4"
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
  depends_on macos: ">= :catalina"

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
