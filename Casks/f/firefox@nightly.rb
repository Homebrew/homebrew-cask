cask "firefox@nightly" do
  version "150.0a1,2026-03-19-21-27-47"

  language "ca" do
    sha256 "3c91e68117fdf10f0582a8abc0f6ae3bd7f3e7d85fc494ca16eeb502ff2ba697"
    "ca"
  end
  language "cs" do
    sha256 "ec7d99f69aad5dbcba6897faee38783eae0200fa09acae8d6f3dbe804d188d66"
    "cs"
  end
  language "de" do
    sha256 "4c7440a2243251a6067596e4f6db75fbf347fffecf4b943c42eb746135ed4baa"
    "de"
  end
  language "en-CA" do
    sha256 "f2117033f0699eab012d557f5cd2763dee96ff96b7bd3ed2641c9bd111f628b4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d07d440bae559fab209e90d0bffb77e5b0f0c8c69b185e753e0e3deeb3452885"
    "en-GB"
  end
  language "en", default: true do
    sha256 "49e801821e54ffff2c95056fb06e2913517ee0f972bfcf655b8aed77d2d497f6"
    "en-US"
  end
  language "es" do
    sha256 "e37fcc6c72c452dbfd2f1c5869f1427e9c4872327c538b684309d44dbf9a8068"
    "es-ES"
  end
  language "fr" do
    sha256 "f1a53ea2c4e28b76c43de2d2acbdff655bf8c50b5ae98e100cd521dd4d9e2aff"
    "fr"
  end
  language "it" do
    sha256 "9f9a3cd9470e0cb2c3517a7c334653e1d6f38a486f8da2aa3ca543e44a59fb51"
    "it"
  end
  language "ja" do
    sha256 "8519679b6c7a6b09756d78ba250eeb7479fb4e46a48a5968d3d289b0d2865318"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2f2a3d80af7ea6b1d4bb60faf87d80f4b8d489407761930641258426b79e87f3"
    "ko"
  end
  language "nl" do
    sha256 "728a7310907b22807faf257679720f42cbd2bb376b663c5305e250240e5bf457"
    "nl"
  end
  language "pt-BR" do
    sha256 "4208fdfa49ad94d237a3a71b642be23e667dfe6b744cd8547250d412ef7c45b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "db48940092932a80105d496ff61711ad3fecaf2ca916395b6abeaf30d61fe446"
    "ru"
  end
  language "uk" do
    sha256 "10af6a0d7e274c6f845eb7056262b54cfe578a4f61e3c8f2d6cd31ee79db982f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9687f230840b8716da566bce906db99e2f885c7b047edc0395be4e7b16d64f9b"
    "zh-TW"
  end
  language "zh" do
    sha256 "ecc654338076ff5a961ed7e8a4b0c0f836bec6d6f9d9ac564e87325fc9ddb5e3"
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
