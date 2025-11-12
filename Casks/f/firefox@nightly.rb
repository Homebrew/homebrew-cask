cask "firefox@nightly" do
  version "147.0a1,2025-11-12-09-16-34"

  language "ca" do
    sha256 "59d6e03830c76c2f4c80f1f0adedc6213b0443ac37503412bfb16dbdab147461"
    "ca"
  end
  language "cs" do
    sha256 "0c1370d0d0a550d34171f49ba81428ebfae422405dbda78c2b569d973d79957b"
    "cs"
  end
  language "de" do
    sha256 "895bf47dbefe61df6d0a131eed4e98faad6ce340236c664533446b4ab1b09df2"
    "de"
  end
  language "en-CA" do
    sha256 "baf80ac9568b4ede96a5e413e679870e4848588d686365ced01907d44b4c9447"
    "en-CA"
  end
  language "en-GB" do
    sha256 "06d4bef9a009c7cf4fae0f1bfe54484ca4a05d91d544ea50d52ffeed6c7f2076"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11c2c1fc078eb3492ef61428bebb398f7bf431c0b2eb9cfcee9291f577b3ddf3"
    "en-US"
  end
  language "es" do
    sha256 "354621df24344b46958e57f9cd76a43c2ffd9a7ab381a9234d138aaea89898ed"
    "es-ES"
  end
  language "fr" do
    sha256 "41f6c48244400fe90b33715eccbe79131dfd743e3adcb05b9b1c3350b3de16e2"
    "fr"
  end
  language "it" do
    sha256 "af43c148d6fa24a13f6561a643cf6b1e788ea3a60a9d2d006e0936538d097bb1"
    "it"
  end
  language "ja" do
    sha256 "31aa41e5b2243fe8c92042df7584db79e1ce827795301aa27c6573ba402bbc34"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5e42e5206577ce04c24a5b79b664911961b4ef1bb05fc75edacb2a536c56a53d"
    "ko"
  end
  language "nl" do
    sha256 "0ec2f9e20d1026ce0aecdca650d4b123e6684952349a205ccce47cf3cd0eaee7"
    "nl"
  end
  language "pt-BR" do
    sha256 "0aea2a6f013915899ad6164a4fcd9c36ffade9e4b342309632350df779473450"
    "pt-BR"
  end
  language "ru" do
    sha256 "6e4635b412a0c7e9c104f41f1e09560375881dced110e5c650a3fc8f0eda47bd"
    "ru"
  end
  language "uk" do
    sha256 "9460cdacd0e583fa738b3c7f4fe63964339f5a56e1fb5bd1209986755cc6c10f"
    "uk"
  end
  language "zh-TW" do
    sha256 "31bbc3c886329cbf2860b58b79dbc7f96df32db1c8e2886c9388361726001c7b"
    "zh-TW"
  end
  language "zh" do
    sha256 "927b61ab7b2a69ddbca5a32f79a3d77a1fc2b5dd9a4e59c23eaa07d793cb1d42"
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
