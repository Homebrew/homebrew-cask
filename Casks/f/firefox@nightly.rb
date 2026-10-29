cask "firefox@nightly" do
  version "161.0a1,2026-10-29-09-40-00"

  language "ca" do
    sha256 "27cfb3c9a7e6e0cb178f6109aefa466801c565365ac3105e7d8dcc7d12a2545b"
    "ca"
  end
  language "cs" do
    sha256 "885405a461dca39b352df9aa7a54e9e889da2323a2286ca20ade0cec1c44e832"
    "cs"
  end
  language "de" do
    sha256 "82ea1ee0414f94c303effd7169a094f469263a7c936308c39a9f37a7a200fb13"
    "de"
  end
  language "en-CA" do
    sha256 "c1152d9146625154e9ecba66f55643beb7965393aca59e33d8e3d5656d4459be"
    "en-CA"
  end
  language "en-GB" do
    sha256 "63e8cb9594d09b1f18603ebcc69b6fe5119c03695b45ef1ee138c211c3ec7a57"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd05eaa61440b5f35072c66aec64caaf84f0ad3c7537e8277ccb0db3ac16f97c"
    "en-US"
  end
  language "es" do
    sha256 "07f126b0847871c54ac826bcb1d1a9bc785300f5aaec5ffb0c135fece6dc4b70"
    "es-ES"
  end
  language "fr" do
    sha256 "83024caf35b55237c72603c411285d4f85d7c0c1d38f4837cd6dcbc23037ac60"
    "fr"
  end
  language "it" do
    sha256 "8ebdc4232389a5e710a11c582dff4b3b39c462d321a9adcc3db0e49e3ce4fdd8"
    "it"
  end
  language "ja" do
    sha256 "da023de73436e5ce4f0fdf8f86215e61b7878b47d98ba71ca64a6ec7804170c6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e314494a2023d98b058cbd9b99c6f6f76e8ea796f3a09c5d49ee80c35d73703d"
    "ko"
  end
  language "nl" do
    sha256 "29922f6bf4849e60d2e5805d5bf923b795ea45ce4af56f87b4dc751db7d79d28"
    "nl"
  end
  language "pt-BR" do
    sha256 "b7f325a0aa4583d783214040a8cdb406dd84aa10f2b63c0b5d90034881e01a7b"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e7d19db51f26b3a8f01df8b4f0211d33ae4f84af4ac68bec1f910573ed233d5"
    "ru"
  end
  language "uk" do
    sha256 "4eab4e9257436a48a661675f188c0b4461267d641d51f7ebbeaccb929846831b"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c31308294a9d503914abe9367083c29c58314026c553e8bad1a093c8d189066"
    "zh-TW"
  end
  language "zh" do
    sha256 "d4f86815e5165ec77c8f2d41b434c2bb041b71cf7c469cd96e34fb7ff69c1dfb"
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
