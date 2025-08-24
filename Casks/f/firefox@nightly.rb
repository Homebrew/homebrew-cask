cask "firefox@nightly" do
  version "144.0a1,2025-08-23-21-57-06"

  language "ca" do
    sha256 "b90923850f4df05de92d0320fd5cda035fd2f03bd3bb6705a60839d63d58f97d"
    "ca"
  end
  language "cs" do
    sha256 "bc6bbb62ad3f12a033c5bd30749ff85bda00c6f3f828374db3b6e33975991af2"
    "cs"
  end
  language "de" do
    sha256 "ac62b7f5c0b68ffaf1835e72cc3d18548b4dee8515cdaafa5a36eb0fc815808f"
    "de"
  end
  language "en-CA" do
    sha256 "ff90863022462a52c90c67f7923fcf5b55b5b7962571574f8229bd0a0fd09bbf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "942bc5d924196bf961f5e803ef403f7b9b152843e3227f6f4b2da1e4f7751c5f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "51ec3e9cfc2637958a99f495546786b7f8daa8b2cfc529d938d23d4d79659f51"
    "en-US"
  end
  language "es" do
    sha256 "06a0327f0de7c513688fed743b474495bddf7bb2ad6cc8438a0a290de10b01a5"
    "es-ES"
  end
  language "fr" do
    sha256 "21f14b548d59c915e8b234906917642e823bb8090d24003649677b811190f5a4"
    "fr"
  end
  language "it" do
    sha256 "5f75334360521a08fb022f741b3118979fbd8a6c4ec39c4a1fb5800155015ce7"
    "it"
  end
  language "ja" do
    sha256 "ef0dadb282c600b4a8e9689729fa33acf12c6906a881fa8e2a87b753870e44e7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f1511c1f9a4f13d0e94baf58ed938422d4417d872320a1ee5de8d86a57adb7d0"
    "ko"
  end
  language "nl" do
    sha256 "66482d5f28f01a0d9253ab67a67c0e3b28ddee7de8d7152bf46afb83d892b31b"
    "nl"
  end
  language "pt-BR" do
    sha256 "2b9fd642623842dfe05fd226d8208f05b11e110306ccfebc1d8241b24f1e71cf"
    "pt-BR"
  end
  language "ru" do
    sha256 "89d0ff22b94649c0b0d859c4ffc90c034e3752aeba1df35cccee9478cac9acf2"
    "ru"
  end
  language "uk" do
    sha256 "567b33d063d956299a11e38fbfefc9a1cec867256e90779c3639457c59acb7cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "6f5d7258866638d3de78779e429018cdac659370b0fccde2d6778b006ae11bfb"
    "zh-TW"
  end
  language "zh" do
    sha256 "31044ad52b2f8b93f0fb040fa6736a8f6cd47353de33add1088912bf80a3a48e"
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
