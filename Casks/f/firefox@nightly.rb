cask "firefox@nightly" do
  version "161.0a1,2026-11-04-21-48-39"

  language "ca" do
    sha256 "802933052f8ed162b28101d6eae57fb5278bd55a07ec41236ac4b01e67f1bf76"
    "ca"
  end
  language "cs" do
    sha256 "676c22f85ed440bdedcbba774850787b592b2f5e54f389925046691ba1557bb2"
    "cs"
  end
  language "de" do
    sha256 "a5fd1f2c7426e719c0376ca014433578d24f0c9bdc9ea76efa18d2d56e08d43b"
    "de"
  end
  language "en-CA" do
    sha256 "65cc9feeb0c5f738c675c868bcfddd046cd2e499d1a1edba8784b328a4ed906e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a568b6aa54134eb2c0ddbe7ddf58da80f4d296d6e19ba776dc8fd4b8856e5733"
    "en-GB"
  end
  language "en", default: true do
    sha256 "40d877e1f76e6c2ebeccef8b491c17a642addfc9f26bfe71dfdd6622360da76c"
    "en-US"
  end
  language "es" do
    sha256 "593cc3bef9172cea0101bfb174e963c9b9bd5bc621d8c283e90c49a005841202"
    "es-ES"
  end
  language "fr" do
    sha256 "e1d012728ec08f9179719b7c113087bcc6cbeb1fc631f4b552efe88245874ffc"
    "fr"
  end
  language "it" do
    sha256 "bd1bff1fb0094e0521b52de65d60137e3b466e52a814559bfa02f197af2d942f"
    "it"
  end
  language "ja" do
    sha256 "b4f8989975065423b7512d4d0579808578835c81f485274276bb5c52ca16ffb1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "38a73c80262a3c3d41926c6195ba3e80b509c4e26212879f02eb202c79e9c8c6"
    "ko"
  end
  language "nl" do
    sha256 "699c1f65f71220f425e3198ca8d85324606d5711bd92e3756a11f2ecd6ed2577"
    "nl"
  end
  language "pt-BR" do
    sha256 "29a6d91871e0eba9bb015c362b0573712d83df2081cc65a4670d792c4e2a8093"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f91915ef1910ef007f8a9726f2774263e4238e028e1642d894d6707915936e9"
    "ru"
  end
  language "uk" do
    sha256 "2026746f0a941eb51617d22405afb5758d661335ff3c4048e21a9e1f85b9b777"
    "uk"
  end
  language "zh-TW" do
    sha256 "f15def2423b9168b7d0ba48329840cf3882edf2ec9147d275fed605a86cc4276"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ca6de7acd7b2584d157fe58540d4432628204bf11cccba5f3717e149c86f5fe"
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
