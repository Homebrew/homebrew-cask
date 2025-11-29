cask "firefox@nightly" do
  version "147.0a1,2025-11-28-21-33-35"

  language "ca" do
    sha256 "50278cf2f1a7144f9b6877e1b049943fbb52cb29dc492846b25642aaf58a3021"
    "ca"
  end
  language "cs" do
    sha256 "745deeb4128639c7b67750fefa05e850f320f74ca050f7a38de0ab3db73276b5"
    "cs"
  end
  language "de" do
    sha256 "0126f6a3c7051e77720f014e128542d0c30146003e86656584bc0082ea2f9004"
    "de"
  end
  language "en-CA" do
    sha256 "6a1c4202febf9833de43846d963addb70de55bab31bc1e90c9cf062ef539e3d0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "73343472ef6b2e9efd1eeadc1c3d044c64df896ac1e12cc0196b0009a9c28da6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "61a619f373d649d2b54ab4acdfd3f48e82a5d537b2634dc8fb8a09b8099f8625"
    "en-US"
  end
  language "es" do
    sha256 "d75b1e89ee1dda04db52e2173b9a0bcd8ab82c05e786c0ba5c011a990ce70494"
    "es-ES"
  end
  language "fr" do
    sha256 "85f5a7e21a595f8cc8755b49f9602e2bc14597fff2cec36b1967be3a6ef47de3"
    "fr"
  end
  language "it" do
    sha256 "e32db684b8b24e1b5b1a6b84b8c509573a31c892926db0eba66ebea4c8e61229"
    "it"
  end
  language "ja" do
    sha256 "676ec2f1caa4ceb82e7a3e392f482268729fb022c1c6600d9276cc091401cb03"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "06d84310554b2260903f820db622997973f40eb5f0d18b7dd2f35b3167930d69"
    "ko"
  end
  language "nl" do
    sha256 "4cb363782395fbdfa62ecc7e54b97cb1c7e18a81b16d5f1a31d20b5a1987f682"
    "nl"
  end
  language "pt-BR" do
    sha256 "599c303bf6bbf6eae03c1c6558ee24ad73cb3398f3f089086328f51a94a85823"
    "pt-BR"
  end
  language "ru" do
    sha256 "fa483356c2738413511d15398e78b1a6cb35adf316ef669e7f3be219a252ed5b"
    "ru"
  end
  language "uk" do
    sha256 "d55c6488b603f6cf6dda10770a3114e7bbae24b7719955433b89f799e0477407"
    "uk"
  end
  language "zh-TW" do
    sha256 "56a0c9d6d1aeca837f4f37be41eeba43f5e531a543d817fbd45c0e4c1cc25e23"
    "zh-TW"
  end
  language "zh" do
    sha256 "daa5577af84a3145fea5f95cb46902b2341bb7e477f3a915c6a1b5b01890c7b7"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
