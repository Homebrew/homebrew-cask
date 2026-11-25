cask "firefox@nightly" do
  version "163.0a1,2026-11-24-09-36-48"

  language "ca" do
    sha256 "287064a842ba7874b73e6ff0e1322dac3a529c6c24308ecf5ae401a4f4313d98"
    "ca"
  end
  language "cs" do
    sha256 "0490096c815b45159d6e7dccdaec8876be30c2e04cfb94420ea7b5c7b1056448"
    "cs"
  end
  language "de" do
    sha256 "8a0aee125e0868dc8e45cd456a6ba8f605c4037f442093e21cf50e1e67570801"
    "de"
  end
  language "en-CA" do
    sha256 "7ba18a882ae3ed68f103c86a46fdfe4aca88c3460f671db2a7d19ccea97e1aa6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0404ca90090203f40d54f514c49aa500f293d9596bf18d0205d553905f0dae16"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c453b2b21d39a2f769e9637c4aeb4e80a1bb062c7cb36925c848dd6af5b95b9"
    "en-US"
  end
  language "es" do
    sha256 "a01d7d25df21a58b7fcdd0a01f924eb6f269c61a155e5e69678b5d644af57853"
    "es-ES"
  end
  language "fr" do
    sha256 "e1cb8746da4a99b3abc348a02adb0829b1e8db15b3416e1bb4eaf0ea008710c4"
    "fr"
  end
  language "it" do
    sha256 "5db9a9fa31352d2e07d83f03c7d3868d7a149a103d770c78a5a999a1a08b3c02"
    "it"
  end
  language "ja" do
    sha256 "286796847280751bbd58cb3790138c7ec1b93315b21b70b4539726d4f9ce4c3f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3aa2716a06b77532b777562349169602ab2894d4f49d10054fd2b5f0fe52160d"
    "ko"
  end
  language "nl" do
    sha256 "8d47d048c12a56dbefa02b1f05b61695cae51a85aed596d4d49d6db1d15e2f61"
    "nl"
  end
  language "pt-BR" do
    sha256 "a68072cedc00cd9c132512c6570a1bec849c606ed39ea897b545fc39599f4a1c"
    "pt-BR"
  end
  language "ru" do
    sha256 "a8462c5fbea8b07428d0c8022915d0a1bfbf80028a9d63a7c8e18c2700ccc4e8"
    "ru"
  end
  language "uk" do
    sha256 "7d6781bf1cb0b1578aaebc7f645d6856d9f9babf8f26e786e13cc652141074fa"
    "uk"
  end
  language "zh-TW" do
    sha256 "579b7a15789f05ed9305fef8d8eb49c1c1dbc8ab9a0d6e8ae3d8a0bf1587762d"
    "zh-TW"
  end
  language "zh" do
    sha256 "a9bd4a6cc2e4d8a3e5641d0e4cef866061d4880f1cc61672129179f2d10d003d"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
