cask "firefox@nightly" do
  version "158.0a1,2026-09-21-09-17-46"

  language "ca" do
    sha256 "623f4c9a55f6fd3c855754562a4c92fffa5431bbfd5a4746224cfeb620c78c6c"
    "ca"
  end
  language "cs" do
    sha256 "f6b4cec3cf61e9cacbc74a87897457681f312dfa8b74343cb4df475e28ec5c6b"
    "cs"
  end
  language "de" do
    sha256 "5dce566c7e3f477b6ddd1d86efb86ad42c5f3b90eea5f91b3affb5c412ad501b"
    "de"
  end
  language "en-CA" do
    sha256 "15bcac7866be93096b2f1652de35caa8badce22de08a9e7701a4b136c1281e06"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d495e707e300a4224b8c9cc080fb7f76f0dafa5a7970860e39ee389984cbd53a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7f94ac30aa5d3ca05139ff630d0077aca62d3bc3b405e06a789e728e46de06fd"
    "en-US"
  end
  language "es" do
    sha256 "290e826b4f886829e837278c7243d245ceb127482233c0b1034a36eb3b97e868"
    "es-ES"
  end
  language "fr" do
    sha256 "39b06b91c582632802dab7f0146149f10f74e82120011f16c18b5cf15352cfea"
    "fr"
  end
  language "it" do
    sha256 "eca2dd0451d125ababc62e387b154b3c44a0bf8776fd3acf505eb37193e00fa3"
    "it"
  end
  language "ja" do
    sha256 "753664664654961f00ea42569cd1a382fef26dff26483a0e8a6115c9f3fa51ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d93d93cb41b45949d97c8b19672cd3a4a249cb3c03cee2bb99db6c93d2a6f12b"
    "ko"
  end
  language "nl" do
    sha256 "87121fe5325a2ff131d05731a068b5642e4937a52d28c7c3361d45b7d971981b"
    "nl"
  end
  language "pt-BR" do
    sha256 "0504c7c16141a3dd26b1f12140e2a5986951d649663d4b77d77946985e964d92"
    "pt-BR"
  end
  language "ru" do
    sha256 "68e3838a8105f40a67ddbfcf2cc496278d751f95213e698f8115c777b824ae5a"
    "ru"
  end
  language "uk" do
    sha256 "a3480750d488491a08387654d6c53ac63cd55a9f5ef666996f19a78e96469733"
    "uk"
  end
  language "zh-TW" do
    sha256 "49898cebad637ce5287693dc146102467b226db20e88777c35f91bf8154c57c2"
    "zh-TW"
  end
  language "zh" do
    sha256 "5c0cb7b5e3a795c2dde6d92cf447ae0b5e3013102346e9888aec8019f9ceed93"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
