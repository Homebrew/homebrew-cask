cask "firefox@nightly" do
  version "148.0a1,2026-01-09-20-26-27"

  language "ca" do
    sha256 "0f4469ff829e0d9878d925a0f9967490f33638d5adda9a66e6e8950a2aebd886"
    "ca"
  end
  language "cs" do
    sha256 "1c53371fca7139109d847bfec43b2d8502c4b8c46dbd51f740e29c319fe87cc8"
    "cs"
  end
  language "de" do
    sha256 "65b6e18b888e1b5684021bac020edc8fbbf2c945cc8a8d4869599c6bcbc2eadd"
    "de"
  end
  language "en-CA" do
    sha256 "66cf1f08b408ff88c5978bddd0fefe56b8da467210b2f447bda97911131e800c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0903b6faee0c1e7c84f3911eee2f65d6f78b1063c54064981c9dd4d5fff80cd9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "44d7ff78ca24ef45ea9ee6ef23e383a3db45d00a98ddd096c9e686f67c26c1a6"
    "en-US"
  end
  language "es" do
    sha256 "8e7c2f2e3f30e989655720f6300c17c6d4ffeb5fb7ba391da8efc3d6ca0da744"
    "es-ES"
  end
  language "fr" do
    sha256 "015496bab6767cba9073ff0388a5819bdcc46af1ad43a46f65ca9daac472b01b"
    "fr"
  end
  language "it" do
    sha256 "511869dac7687b3bc6856012355e6b1b95b9c30da74b051e44f5497594487e31"
    "it"
  end
  language "ja" do
    sha256 "aa4f86c60954d8c0978223082f4321e296e4c4911e29d9d2d38a65eeae71eaa8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "848be2a66f88713d07331f809723ab2f26a5ff349a116f6ae5743b3c8300da93"
    "ko"
  end
  language "nl" do
    sha256 "64ae8a424c56c3029ce46939cf4f8326b9dbb924e1864c7b17b1d81dcf4e5582"
    "nl"
  end
  language "pt-BR" do
    sha256 "7e68267cf479565ff4c2047c81d185e8c60e81c47c314626a17d52c61e11effb"
    "pt-BR"
  end
  language "ru" do
    sha256 "531aadf3cb0af5e181f4cba18cd71c8b9269ec8ef27430c4428c124e412a213c"
    "ru"
  end
  language "uk" do
    sha256 "5217232308af6743b0e6ed5f6bdaf2b3835c0b768d66c8c39c3fb1823c74283a"
    "uk"
  end
  language "zh-TW" do
    sha256 "f55946a2cc5cc54400417c2dc267e3b2c36052ee5b5e4d5694dc5de8c6cdfd1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "10fe3cddd9706f6611300299537150bb1ff63d89b498d5098ccbfff4be2f3ad8"
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
