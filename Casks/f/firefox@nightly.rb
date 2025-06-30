cask "firefox@nightly" do
  version "142.0a1,2025-06-29-21-22-54"

  language "ca" do
    sha256 "ce4f8484fc72113b8cca2d3bba5d7266ef3917073c1d50b8e565ee25960f4a69"
    "ca"
  end
  language "cs" do
    sha256 "af7a03bab2911a6be0968cd859d4913e0ee96f67d247bf006ccb7d98206868c5"
    "cs"
  end
  language "de" do
    sha256 "f0212a7dc468a7a666f71be261f3973b946d5dae0b34ce3bff6fc2ceb4e37b0e"
    "de"
  end
  language "en-CA" do
    sha256 "41edff10b730c73497e28dad9a03cc73a2ed4f689cef83a7914a2279babb4f75"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2d48576515f0a7a2b2589ec69841fef8c806ad8837a2816052f01b005a61d01"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed7622cd8dd20f21f14381e1ef5ed1661b4d92d2d565cf2e2f8c134670edec1e"
    "en-US"
  end
  language "es" do
    sha256 "49a8aefaeb9e0092f5188ad811cb48e8979b6cd20b8417b1561f003f187841f3"
    "es-ES"
  end
  language "fr" do
    sha256 "af4c0f5f33057d48ecaa583d0ae6c32157dde7774973fd36705ae824c3f7b216"
    "fr"
  end
  language "it" do
    sha256 "313e302344822a993401618dc072fab24b0b35c7831068d1f85e2e234dd427e3"
    "it"
  end
  language "ja" do
    sha256 "db31ddea84e51d3ebfbec8cd0aeb9a194607f5892a73e620d355e767c8246081"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a3d998659fa9594ec00ae9eca2a525972db57ad4e46ecd0cec447326db8abbfe"
    "ko"
  end
  language "nl" do
    sha256 "07c85c36c0e456e4d8ff2e4c7200e3e80ec554fa1a2575f1a1ec43ae14210773"
    "nl"
  end
  language "pt-BR" do
    sha256 "9d4963d3cc1105271e9e12008fced2b560bcfb30b98e01411d917cd7ff4c8fb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "33353851e2d693c42e9c65863082bdcec541511295154263a2191162d579fa7f"
    "ru"
  end
  language "uk" do
    sha256 "0760f10bdb1d70152b1b7efcdd02c07ee61ecaee888938e268ba58f0c1af6c9b"
    "uk"
  end
  language "zh-TW" do
    sha256 "62658a2a3d657a9f9ef4168591ffbf843f355072b1ad0bd9ab884839701fb182"
    "zh-TW"
  end
  language "zh" do
    sha256 "c69578afec5cfa2fbfa60fd8f549163929128b6df8cdabc9be6a056f1566b8cc"
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
