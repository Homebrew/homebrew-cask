cask "firefox@nightly" do
  version "158.0a1,2026-09-24-09-34-33"

  language "ca" do
    sha256 "5222f8c5482daa6208a40b4fab59375beb35bbbcd1425467e30ea5ae89a333c3"
    "ca"
  end
  language "cs" do
    sha256 "da4c8e49dfb1f7028ba672cd6878c1aba3d64511b3db7e48857daea280f36403"
    "cs"
  end
  language "de" do
    sha256 "16113b79069a863915edab14a2226daa5e8149a4951d268d4c7f7871a6da22ba"
    "de"
  end
  language "en-CA" do
    sha256 "7b3fdfcf34ffdc9efd80400c3865b9a4d421233fabd66e3da5b498a7fa7f076c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "75ae21cbb19193e427eaf7dc9e3e8382d276499f21e520a5eb60e3299019b9d3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dfdebfc32dae98e75a2814d41fd3f3288c71f4bcea4d05b4471eac55bacbbd8d"
    "en-US"
  end
  language "es" do
    sha256 "e18f1d6a4dbb4bb8e0721507aa2cde20a7348319dace7648f02e2a2021678c3f"
    "es-ES"
  end
  language "fr" do
    sha256 "2074c8635269a0e4acdedc67e5f159066a0e3278104324914135a316764fa1b5"
    "fr"
  end
  language "it" do
    sha256 "7ae3ca738c8a3de17a1c0b2060dba22763b9049ec2325759e054724b5212c96a"
    "it"
  end
  language "ja" do
    sha256 "907518e72257b6d8b877f8506b27f1d1baf680ea4c0c8a74e564a5e35032768c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "735cf934be2fa8606ac42f984110cb257623599afdd185bc39dd77b41fef3749"
    "ko"
  end
  language "nl" do
    sha256 "4a3d1389320a07a55d1b4fd2f2a85902042b77b8013cbd8b79a79a3f426ead4a"
    "nl"
  end
  language "pt-BR" do
    sha256 "8d682814848b2393d547e2386b5398c526b9c830901b32cea53e5876a1343f4e"
    "pt-BR"
  end
  language "ru" do
    sha256 "9562bbc066225f41c24d7a360913f3d906fbe33ac201c0e602a95012b29361e9"
    "ru"
  end
  language "uk" do
    sha256 "17bbde6b771529989bfecbed8cc1b55181983af680b56d0d9d0a220cbda05500"
    "uk"
  end
  language "zh-TW" do
    sha256 "17807aedf1ed746a65d64e3f89e911d2c212ba629525fc3e1a2f78930bfa6888"
    "zh-TW"
  end
  language "zh" do
    sha256 "be9c50e772dff362fc8b74daebedb75526bf77ca993fa7cb18b0212ee536cd95"
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
