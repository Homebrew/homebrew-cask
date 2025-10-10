cask "thunderbird@daily" do
  version "145.0a1,2025-10-10-10-45-49"

  language "cs" do
    sha256 "35748360a7dc8c1a8cd50f3de509166e49f32f8643af457b6b6135075b61fa47"
    "cs"
  end
  language "de" do
    sha256 "007a117f21bf2c6f7fa5405da8586ef35204b4b1e181b7e652fd77dc000f40a2"
    "de"
  end
  language "en-GB" do
    sha256 "34e0a6354b0450e77a12be2cf45b44959fd875f532ba3acab0ddba1021ec0ad2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3db9a1bf0d2339a4111254a956d913225fc66c5571ac294ef8e883a9f1761eef"
    "en-US"
  end
  language "fr" do
    sha256 "b2776f51d15d3da6bd68c87b8d9b206b3e2edf310f708ac70aa28cc06399c5b8"
    "fr"
  end
  language "gl" do
    sha256 "cb8dfc53cf7adb574e605806c8363eb56039a67960d22595714f29530585b713"
    "gl"
  end
  language "it" do
    sha256 "a2e64d41aa17f71eaa82cb1166a216dcf4ec1c2b1e744a9acad8aa155f94ee2c"
    "it"
  end
  language "ja" do
    sha256 "e79aa312b25a57d72fd8dfe1a2f3f6df13bd2c1813136dd5a38615e7b393783a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1a30c7115ecfec81a245eca4fd11d4091b2b6d298da63af678335bc6b6adb75e"
    "nl"
  end
  language "pl" do
    sha256 "b5bc0a95bcd62fad6a6bbfbd1057101d7e1448c5a219af63add8702af3043148"
    "pl"
  end
  language "pt" do
    sha256 "8f8d6b9cd69080f414f94c726f10fac04a3c980d3a472405cbc94d466ec6f3cc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d0f5a19fac67bfd9dd19e11ecede74d57e1f7e4d86b09b9d01920a1d43f7c9b7"
    "pt-BR"
  end
  language "ru" do
    sha256 "7ef2c9fe62dc3b966d2a620c23d84329bc95d241772d2728214c9f978111e76a"
    "ru"
  end
  language "uk" do
    sha256 "db4a81ce230a999da0a72639e773e8025cbebe522d81d0930e0e26be5527787f"
    "uk"
  end
  language "zh-TW" do
    sha256 "7789612a805d7755f1b8abf648144dc6acb3276a4133067b35e37603acfda308"
    "zh-TW"
  end
  language "zh" do
    sha256 "62669104500d41662b7272cc70851a8211ce44a28252841203d4e1ecc6ba01d4"
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
