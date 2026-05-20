cask "firefox@nightly" do
  version "153.0a1,2026-05-19-16-06-12"

  language "ca" do
    sha256 "4c3794fae5367a5f24e47b1ff1842702a08331ddcc3064f2957693bc971ad271"
    "ca"
  end
  language "cs" do
    sha256 "de085f0e123473d8d52888fee9c7608d10be6484250cdd28833e5c1bdc71b0fe"
    "cs"
  end
  language "de" do
    sha256 "51a6f4be3a19eaa487db122f5d086246cd434743121549bf7f1f0b22f2c5bf74"
    "de"
  end
  language "en-CA" do
    sha256 "19d4022d05fc08d06c3bc89859c317ba224b13ab7e95227aabe461bcfc5e27f5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "79edb39cd6e2c1c8f7e36edf1516ba17a48fb290053378d204908918c8e0ee1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ede3b74ee21a62b419cc244e313782454bbc94afc2a52d85a27c10c3b064be6f"
    "en-US"
  end
  language "es" do
    sha256 "c39da856220c62adc3cbba77ba69449c8164340edaf88bfc58e87c2c643d160b"
    "es-ES"
  end
  language "fr" do
    sha256 "c1d198c268d2bb31b2ffc3c2941ccbcb7404ecde3a45a3e141bbb63704a8a39e"
    "fr"
  end
  language "it" do
    sha256 "77c49f3ffbdd0412c9d89b22df062a111cf55a33442091f05a5849ffe3acfffe"
    "it"
  end
  language "ja" do
    sha256 "89c0f536ae2e881c644f3c1de484cf211591d1de4a215f111262d593278aa7da"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "369279cc8fac6a49b621fea0a12f07e5fde1f4d711af862a1389f3286064a5ed"
    "ko"
  end
  language "nl" do
    sha256 "a747871ffae31d015a03417720e88472e6040780d3256a0c5b86ef8364091ea2"
    "nl"
  end
  language "pt-BR" do
    sha256 "9f8f250a5881408437ba3c109854a5fefb70dd66021d9e478a1444735b603b9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ab3b716aed074eb4ff4ce9721b6a1fd6c851bce1ee4f4e37dddbfce8ef1ce50"
    "ru"
  end
  language "uk" do
    sha256 "af3b393e1972920100c37a944ac06e42d56611828fdbd76311cad8c7854254d0"
    "uk"
  end
  language "zh-TW" do
    sha256 "53a056065adb5da61dffaacfff0f79488153267d325e39064609b9c3f2e3fea9"
    "zh-TW"
  end
  language "zh" do
    sha256 "e4eb869163b65f184966391a392636eb22644d1bf0b7fa6e50cb3dd60edc5720"
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
