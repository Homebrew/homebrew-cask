cask "firefox@nightly" do
  version "140.0a1,2025-05-11-09-16-30"

  language "ca" do
    sha256 "3236658c090b40a4bc535aebfc8564358b1dd0fcce2b8ccf7014a8b8bd522927"
    "ca"
  end
  language "cs" do
    sha256 "1637a589153f58129a39158408cd0fb379ab59717e1c1af1a4c154fd188166e7"
    "cs"
  end
  language "de" do
    sha256 "3c112543af1fd93d2191f4a3574530af9699c3167d5ea3438cda74fa276f7874"
    "de"
  end
  language "en-CA" do
    sha256 "698001e37a3ad62ce0a893a5b02a54b5300b0c0eda0e9003d1c49b2088bdcd2c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "538a8c7131bc14c5d2ecf0dda4adff07d77cd79e02c0ffa2ec81a2e0717d4404"
    "en-GB"
  end
  language "en", default: true do
    sha256 "92d9965880679ab3be834ac206be82ec5e77ac29ccbafbc067c30c02bdf17e7f"
    "en-US"
  end
  language "es" do
    sha256 "50d47f1775992b74d22f785f439ac9176e18ffe73fe18a84f82d5be10339b7d6"
    "es-ES"
  end
  language "fr" do
    sha256 "9a9ae453595a61a1fe99667a75528d31fc3ff7f675da72ca3b1200ac6ce2dd09"
    "fr"
  end
  language "it" do
    sha256 "7acd84381f210232ea43b783b528e1932aadfd17603cd509a92d384f0ef86122"
    "it"
  end
  language "ja" do
    sha256 "090c7e5c94760abf797a7e6daca7aa597f8821d7e6dd8c08852cc21d995eb0d3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0d776935b8f13d3d5d59c03418dc799505b437c98f7a8024b9d476d54ea16504"
    "ko"
  end
  language "nl" do
    sha256 "135e2de70d0e72facbdbec65b1b75b1127ae783e85f82b051243c792e3d8f355"
    "nl"
  end
  language "pt-BR" do
    sha256 "20889d21b1230d3bb57bdf8ab1381bcc6591e5116592ab5cd91e7c8930896918"
    "pt-BR"
  end
  language "ru" do
    sha256 "f5e4a46a231ff6bc0a2bd5219764b7f8223980b8798f2914856c3a4af4446b96"
    "ru"
  end
  language "uk" do
    sha256 "a95d50576b40730eddcb6d3af935c581e719caeec4151e77148ef8e9a738b5af"
    "uk"
  end
  language "zh-TW" do
    sha256 "d749c7f5e5c946b185f9d247c9a788ecd6fac2183442c206c505be2c774c2293"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea9ace379127d4784c9f93856eed314be3779a5150e6676b67314825e56e050c"
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
