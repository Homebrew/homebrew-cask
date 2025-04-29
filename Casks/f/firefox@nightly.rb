cask "firefox@nightly" do
  version "140.0a1,2025-04-29-09-52-32"

  language "ca" do
    sha256 "9cafbac0ef4fd51d60ee7921e522ddf2e9e03af8ec519f26edc9a723b16b1d9d"
    "ca"
  end
  language "cs" do
    sha256 "830c7c0ab20c0518a4f8c9c84b577cff18c5b11b82e98895bd4ded2c6bf0c03d"
    "cs"
  end
  language "de" do
    sha256 "1caccd1f0c99bd0838b47aef48214f1fc08b4160cf883ffe5b229552857f9843"
    "de"
  end
  language "en-CA" do
    sha256 "e772b18d6e0132d9ff401adae90d1e4c6394290159c81e723c27961694f6a206"
    "en-CA"
  end
  language "en-GB" do
    sha256 "fb19036369d1922ebf75692923611f559f644c4c1089c0d88c50f04967c2fbdf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9652e43e86b47e29cbb310a970d92add8ea7681099b522e9c94e9d66e86c7c0b"
    "en-US"
  end
  language "es" do
    sha256 "c8c31f3b278b6d37bf96ab4ab810622a117edd71e8fb4c26ee33a3d652fe88b3"
    "es-ES"
  end
  language "fr" do
    sha256 "4a77ed8141ebf1dee35ac8a8e942ea8819c7aec7b89a9ceb18bf9df4472dff6e"
    "fr"
  end
  language "it" do
    sha256 "b83e07db94ff5db53be00cd09b506c110f884c3e1efef61b0b6e9c109c45481a"
    "it"
  end
  language "ja" do
    sha256 "20290d0d03264b430208ad69c5d22a8ce18a55aa4403958bf8ed34bb9c24cb24"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d8f9357422d544000d8e7bf6a7740230fec20bf0f4f62321e186fc17e8efc316"
    "ko"
  end
  language "nl" do
    sha256 "4c9341eafaa304dc8d686d13d00c107c3eb18e7ce0cd77f8f319dc0c1f3eb465"
    "nl"
  end
  language "pt-BR" do
    sha256 "bcf326e67f5c1b8cf0ea667445bccbde979a3927d0d0c7efd0308ec0faaf7e04"
    "pt-BR"
  end
  language "ru" do
    sha256 "b043ccb986ddaf69a7e263150690ef88f97c61762993f10eb8658ae8cdd3e926"
    "ru"
  end
  language "uk" do
    sha256 "7210ecaf8d83f9361217312389d25718b4b0c4aa270c71eda06c0837c18d72da"
    "uk"
  end
  language "zh-TW" do
    sha256 "25a1ef4b0e3c1b6a5abbd49ac6d032ebb18abf0e8384e87dc1e21353c1b8c463"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c56cf12d00743eedbe2edf5c2f53d23a6397f0c6fa0c623e6ddb3f22013d4e7"
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
  depends_on macos: ">= :catalina"

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
