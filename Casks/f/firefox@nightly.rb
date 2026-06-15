cask "firefox@nightly" do
  version "153.0a1,2026-06-15-09-30-07"

  language "ca" do
    sha256 "a4fc73cc6dde410cf1fc3d71b9bb59c81cbaf96e729dfbc1fd6f565277e1cee8"
    "ca"
  end
  language "cs" do
    sha256 "9d596003f3838db38507711cc222c41c1f6f8b9a755ed88d6d4bbfb8177d8e3c"
    "cs"
  end
  language "de" do
    sha256 "9174c96c6f892ee4beebe96ac8af7934384fa767d7f5e7bbab67244c0da94663"
    "de"
  end
  language "en-CA" do
    sha256 "ebe20bfb11b839846e0fe79915851738d09aac26dfeb322321a8cb76b38de015"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6a514562fa4e03f8baa5d99eedd552e19832ae078560b3e31de6df31d824bc0"
    "en-GB"
  end
  language "en", default: true do
    sha256 "614bafe4f6c24d3ffc742fecc35adadb6cd0b9de4f5c16bb5355bb3305c6a6bd"
    "en-US"
  end
  language "es" do
    sha256 "8e3613445f661586d1c637c9155f78c70232a1663a2d115915be06e8ee48b0b9"
    "es-ES"
  end
  language "fr" do
    sha256 "2e0792e9ddc7015e6142518ffc2b5d07d6b5103902e4b3a4c81fd32395f84a78"
    "fr"
  end
  language "it" do
    sha256 "85608ebd661739f63e2e784c2f7ea426bfce4f431988d2882d296e438ea407b4"
    "it"
  end
  language "ja" do
    sha256 "41304c0e3bad667367d7ab9e4c8b5ea60f83d506a915b560f1fcec7f236e5005"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "dcc9a88522ebe93a6fa55a2c7fe56e10271fb925815c8aac76e240335785a7dd"
    "ko"
  end
  language "nl" do
    sha256 "30367cd18aab3618a800f02bcfbec13f377ce36e3b99b4fa5d9185f2879f52c2"
    "nl"
  end
  language "pt-BR" do
    sha256 "e6a7a683822e4d83929cb23000972ec9da938abf0da3f49cee31383a562d0bc1"
    "pt-BR"
  end
  language "ru" do
    sha256 "a98d9aa37da52fa5e4751af74ff76f468ae45bbd16c2c6c5be8b5a85ae8930c8"
    "ru"
  end
  language "uk" do
    sha256 "a5e2dd044f5b65568388d199770297b7c618c1245ceae0d892c95df86ca671ee"
    "uk"
  end
  language "zh-TW" do
    sha256 "23489bea36a0d8cfc283dacd6bb1913788b2889f4d5e6a38b403c266a2d9447a"
    "zh-TW"
  end
  language "zh" do
    sha256 "302f07631c5bc3899ec36ae89ec8c5ec87c74fbc34c0434649afb815a53ceb4c"
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
