cask "firefox@nightly" do
  version "150.0a1,2026-03-14-09-15-16"

  language "ca" do
    sha256 "d7eb1047020f1e55a432f0ac0068827b860c4909559022d5ed466cf989b28876"
    "ca"
  end
  language "cs" do
    sha256 "4d9ca61c90984e8f36799174ed4dc968b2898fe42f9ffe4b9264152473dcbd16"
    "cs"
  end
  language "de" do
    sha256 "985b60b3ef9e5f3e83551f4ed1f2ab700748e38c022fbed167f7759da8749f32"
    "de"
  end
  language "en-CA" do
    sha256 "bcd1cedfa2817277ffb5d4b96e7cc90aa157207c5bba2fb277906638fdec0aa1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6891e2b331183ccb69d016d009cd050764f5f7e3df2ec419235bba143719ea1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "715c9829501731ff9b9966fe8d7e2abb7b11b1fefcd4f2387fb49efce5656d6f"
    "en-US"
  end
  language "es" do
    sha256 "f5a1d3e0a25674be090058a50a4416c4a513dd0514f6cf9600a2272904c6e8f8"
    "es-ES"
  end
  language "fr" do
    sha256 "948d4cbc1cd26571ba8c12983b6bc5ab00c1102764c572b0850b35a1e4206392"
    "fr"
  end
  language "it" do
    sha256 "2bd75bbc9b1392341953384cfdc5bb9bc9017ab41e9042746396811c3b5b4fcc"
    "it"
  end
  language "ja" do
    sha256 "547c576f4ac6a7b988c4f0a7561b321f31f14d6553c7816976d7813c267a11e0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cedc7fe91d6d7e5b7b78baa9dad984fbb0f69ae261bfc43fd098a9c9e9e60e05"
    "ko"
  end
  language "nl" do
    sha256 "c9b062c20f66b8f6a3af5553a3ea6e2c264c550255600628790b9a5416fd2750"
    "nl"
  end
  language "pt-BR" do
    sha256 "e5df06f9a8db5953c605907384f20f8ff390bffcd42c5c8ec3965f799d09d36a"
    "pt-BR"
  end
  language "ru" do
    sha256 "f59e5b18a5c9fb851b09f994a917263b10eb34269d97dc3a5d921bac38ee8bbc"
    "ru"
  end
  language "uk" do
    sha256 "7e6f328a10ae7b4c19eb0123baa305847251e89632f93478a958f23cb7fb12a9"
    "uk"
  end
  language "zh-TW" do
    sha256 "c6e19a08f5c4ecaaa621cb0447923259b867bb88ce0002bd746f1ace9dbeb3e2"
    "zh-TW"
  end
  language "zh" do
    sha256 "b53e491e4f1ba09bcaecf6abc290cd0ccbe69112d4f8d85f0124eefc2c7b174f"
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
