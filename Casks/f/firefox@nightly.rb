cask "firefox@nightly" do
  version "163.0a1,2026-11-21-20-02-50"

  language "ca" do
    sha256 "d7a8354206d9758336f1231a4ffe7bf9d86a29e711c4d875faf3d46087270f45"
    "ca"
  end
  language "cs" do
    sha256 "7521535dfd7df919e4f344104a149cdbd104c277d00dbcc5628889723559929e"
    "cs"
  end
  language "de" do
    sha256 "245c1aa11f72b70efac047b348761acf9573584376a34565ba2913d80cca8b6b"
    "de"
  end
  language "en-CA" do
    sha256 "115dfd25eebc8a6ed321164d52fe391c13f70087b88e38e855e9f58729cc6ae0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4ec212292c29d82fb855eca4c7d2d17aea5190686455a917f5038fe58a88a5a4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d5452dfd2a477c3883efdf7af393820040160db09fb8e8f863f57599a0843bc1"
    "en-US"
  end
  language "es" do
    sha256 "a2fad482c18e5e742b63b5d57be7d3208a05fec8e2a07e9a02cfdcdd1ec4e9a5"
    "es-ES"
  end
  language "fr" do
    sha256 "4e9defb20c76a7ef18a3c522bdf26e1fba861a0156bf021cb7447d2a6f46eec8"
    "fr"
  end
  language "it" do
    sha256 "e1259a431a9ffe62843345059b765de6a8fdeb5fe7136a99531f52078abfa01f"
    "it"
  end
  language "ja" do
    sha256 "a5b6b3adb2787600ede288935bb9bd17a878527682b352cb5e9f79944830a7c2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "76136af14569afac798547d48e2d2c181e9f794cc9bada837f9081fb3c3d1640"
    "ko"
  end
  language "nl" do
    sha256 "477ea5f022fb301c62896e58b8e327d1c9578ed9f7bef19105d5fea6e0707426"
    "nl"
  end
  language "pt-BR" do
    sha256 "64eb5ed076257f827e79b592cf38b93dcfe12e7800cd2da179309fd06de8801f"
    "pt-BR"
  end
  language "ru" do
    sha256 "a043439af582350cc4e46c17111d3039c84dfc16a27692ca9e46f012af451954"
    "ru"
  end
  language "uk" do
    sha256 "829ba30c0bf89bc9db33a2517c890dbae1dea963bdb9506e047289bfff25e20b"
    "uk"
  end
  language "zh-TW" do
    sha256 "dfe36a07c2d22b1cdddb4cfc5e49cf5ca9d73c77015ed01115caa84ec66ec94e"
    "zh-TW"
  end
  language "zh" do
    sha256 "433f06b93521e5eabf11d0567b574bdea6a71c930dd046322a6e99ce394ce59c"
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
