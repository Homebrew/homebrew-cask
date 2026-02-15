cask "firefox@nightly" do
  version "149.0a1,2026-02-15-09-08-51"

  language "ca" do
    sha256 "ef04e4ce460366b9c8faf684b7107089c282ba276fce444dcde533152d6c8a48"
    "ca"
  end
  language "cs" do
    sha256 "51b1e68c7269f9f08e5de720be60b873acdd4c239288c6b538617d0ddbec1f05"
    "cs"
  end
  language "de" do
    sha256 "b6b0a56b59f706dace42f0c92c1d596ad91ec878b9d19479f6642e4afe441684"
    "de"
  end
  language "en-CA" do
    sha256 "ec779fad17ef4b6c683f89f44fd2f3ac2fb41d57caa3ef817183b9e8f9f154b8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4d494b9d36b7874953bcedb536972bdf3246e914f140ac7448c9c0cfd8c8992c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "696c22bad13fc6f4ff6604d71bf117f71f859819edcd1cadb8689cf5f1f9abb2"
    "en-US"
  end
  language "es" do
    sha256 "4823761fb51d406a448642f99af39d4cd38f56e0228d83e6c6469e5a50ba5d98"
    "es-ES"
  end
  language "fr" do
    sha256 "f16c4610f8fec314936a4bc5ae2190fbcd5b8234f548ddcf7178398eacf91e4a"
    "fr"
  end
  language "it" do
    sha256 "47bb9f0d0c171ecbd7aa1783fae537590259784541885b89fa5d7f244be1e05c"
    "it"
  end
  language "ja" do
    sha256 "a61f2ec74d7e066f522b31099882279fbc3364a25062ff825d54c7be7f4177ed"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7a81c01334012fbd27275c0b1274388ff2c42c7886fdb3f00be6c6ef1b1e57c8"
    "ko"
  end
  language "nl" do
    sha256 "6f2787486d25bacd7eaf38741db9be9aa9035a929b13afca041259bc02ba9cea"
    "nl"
  end
  language "pt-BR" do
    sha256 "a9bbd6da25e13ce8b7aa6188439c6607fc6af2d254a9a16194e11a851094ac19"
    "pt-BR"
  end
  language "ru" do
    sha256 "ad22abaf63ce2a4d68fe25d653a082b41b4d85814ba6f19c866bebc5ae1d49ca"
    "ru"
  end
  language "uk" do
    sha256 "7f509155611813aed1fcec3e17dc82bfe472530efef24dda9258437938d1b5f4"
    "uk"
  end
  language "zh-TW" do
    sha256 "92f61f308068556f5b3ace7a1b40a765ead5f0ae94c816103beb491171ddba35"
    "zh-TW"
  end
  language "zh" do
    sha256 "45e6443a5d59e59c4e418e791c3ba70fa2e53a9d7e644d4ea994af82b310c34c"
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
