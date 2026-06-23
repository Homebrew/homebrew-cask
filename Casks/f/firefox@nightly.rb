cask "firefox@nightly" do
  version "154.0a1,2026-06-22-19-57-46"

  language "ca" do
    sha256 "71c6051ad3a6c2e18ffe706eaff4f711922a1a9828f29a532d97e6978594924c"
    "ca"
  end
  language "cs" do
    sha256 "bbc8974ea7f669dc5077dfc93f1e8e6aef81f81e229ac16200033a085e5e6aba"
    "cs"
  end
  language "de" do
    sha256 "97f75fa7aa167bd09f4e3d7a2615607b3cd6b60e27b5b3e0dea6fd2887a3ee4f"
    "de"
  end
  language "en-CA" do
    sha256 "53a1cd064fa9357892166f98e599cc99044ef62dbe91b8972508edcb3661d57e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "88b34a15042de78a716fda585b46a0ef66dd61ce15b4f87f146f4ffa8c8cae27"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0f26f6eb0432190d779cd1b1911b0172104e8c9bdf5591039694ca79e77df8b"
    "en-US"
  end
  language "es" do
    sha256 "a3fea75890f2a408a0740e028baa636acd51f2d2c541f93957b9bcb77d9bd5c0"
    "es-ES"
  end
  language "fr" do
    sha256 "199d2d25f1980a7b49dfbbdd2504fb5456f2575444177a74c2491433a7774642"
    "fr"
  end
  language "it" do
    sha256 "5b9e358b027832b37fe0fad543ecc3ec4c57900ffcbba7b7eb5ac1ac7ecad923"
    "it"
  end
  language "ja" do
    sha256 "444c0701c14e75b6688350f36e78796f360e33cba44e7bea7349113260ef7c1e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a70467267d028dfbc3ef0f3e56bea9bc1c7e144c3e6ab3b43610b3600afa1047"
    "ko"
  end
  language "nl" do
    sha256 "d4027478d9b9fe15753c8d8384a1207db392e9e926ab635934920976f7d32e6e"
    "nl"
  end
  language "pt-BR" do
    sha256 "e51278aef99f86b710c926cff99d3d983d63a046765d705f820fffcf48f6ee57"
    "pt-BR"
  end
  language "ru" do
    sha256 "e0a597e6fd5a4f2144761c7fa977130b598952e3ae88beefa4eff2441414f126"
    "ru"
  end
  language "uk" do
    sha256 "9d077efc9c57f0a51435474745c014077e48253cb13eb17d4de4a823628f9c70"
    "uk"
  end
  language "zh-TW" do
    sha256 "ef333bc542b084d510ac497c16cb7d936469de199729044c4c61c9cd4f650bdc"
    "zh-TW"
  end
  language "zh" do
    sha256 "350b03fb8bd03e0efab8d3022328f0d84f3a58e5ef9d037380f0a65af1b2b575"
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
