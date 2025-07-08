cask "firefox@nightly" do
  version "142.0a1,2025-07-07-16-18-50"

  language "ca" do
    sha256 "d5ada855762acc44815a53fa71e24fbd4d079398acef00d33c4a06d3c81a0b67"
    "ca"
  end
  language "cs" do
    sha256 "b9932a0706e9c612efcfd5e7741fcc840a8406cab6f76f71fbe222921c311bc6"
    "cs"
  end
  language "de" do
    sha256 "fe3ac2b1b2682a0423b85e4a7f9a42d4a58bbe26905083b0bc5d0928b833e0dc"
    "de"
  end
  language "en-CA" do
    sha256 "b6d1b6a20ae9bb2549e573120876763faa7d86b1e6cf59ceb208611504558f2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e9c001d8754d27a74cd4dff3eda865b9f63cfdcca8db4fcef1919e278b375e91"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24543563c0ea9e5e039867ed9de61b9da3830bd741aa362826e41fdf4f0c2433"
    "en-US"
  end
  language "es" do
    sha256 "6ebaa615295986cb30cf100da17b301136fbeeba33518e077ee5bc2218cbf57c"
    "es-ES"
  end
  language "fr" do
    sha256 "b16c421486558a6abe0ec9fa2c9092a7c99c35709c3259dae7ad199517175cbd"
    "fr"
  end
  language "it" do
    sha256 "97e3886e78ef549fd948e4c51f3306491d1e90c1cdee0ee8e77a75e9c3c5ac95"
    "it"
  end
  language "ja" do
    sha256 "9f8df308ce2500db6027fb4e4ad0e7624abb99475265f011e17cfb866ac96d8c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "152ecc3b3fbc7fa40952ec617050857059723b5eb1f0f6358727ca775bf7dd15"
    "ko"
  end
  language "nl" do
    sha256 "6de48613892c824a9ba6e5492101237db4b20ff60adec14350aa135d016117f1"
    "nl"
  end
  language "pt-BR" do
    sha256 "16a4106df34df19391e13ab7608825f6979c46b304bba2243a3a63ee1f8255db"
    "pt-BR"
  end
  language "ru" do
    sha256 "de4e2e536159e58094b9340275c2fd931da948a1f8705784f49d63e4477eef55"
    "ru"
  end
  language "uk" do
    sha256 "0bc193fde0dbcf96d8cb953621cd169b4c57089bdf5d836c42be955e090135c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "06913e34924dc2d141fc6dbd6ff3b10d81858f0202513ac9450484a77d42a636"
    "zh-TW"
  end
  language "zh" do
    sha256 "8d9a99a51f7e332543a4d91274b1b41e1e9eff9ce0aecc17f795da6dbdd4af76"
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
