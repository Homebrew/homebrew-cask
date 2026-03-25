cask "firefox@nightly" do
  version "151.0a1,2026-03-25-09-36-37"

  language "ca" do
    sha256 "cc0ecf9f7908fa881d75a855f784ae830db6a9504f967ffa607ef06d5fce972b"
    "ca"
  end
  language "cs" do
    sha256 "17c71466490a0295a0849bc3977a23f90da05a667567e165d63d005c7d369663"
    "cs"
  end
  language "de" do
    sha256 "1307da61044b6fc0408f7e23f3972a6063bf41f6447485228d6abb820e31c8d6"
    "de"
  end
  language "en-CA" do
    sha256 "788989ff67d089a230d82f3655cf68caa444aba665d9b7080a29b68428fd9023"
    "en-CA"
  end
  language "en-GB" do
    sha256 "13dd80c832ec4c40cec8948aacca23b946adf92e17fb2b35459bc51c1dc4ede5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6efa1ebeb25d6d9437e974fc04b2d5da297dab6cb1414f5d921b1ba921e572a9"
    "en-US"
  end
  language "es" do
    sha256 "08d0f39313dcb03af58a98f78040b163985476a5ef7187062c2509f43cbfe4c7"
    "es-ES"
  end
  language "fr" do
    sha256 "db9b20fa4b9b498605f3eea5ebb2e55d429c47f8963a09d79a3a4bbbeaa99e87"
    "fr"
  end
  language "it" do
    sha256 "d92ebd0b17dc22d8be90c91a0261fb858a3ea06a4d487716de97a8d6a33e9c13"
    "it"
  end
  language "ja" do
    sha256 "3c2991ad80822e97fbed33764a63f73b28819b8bed68a1cd11624828373064b3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "d99b4bc2f8a36d6e80e8e12df169fec02300fdc5ad6380d4d8af8b6b457bd842"
    "ko"
  end
  language "nl" do
    sha256 "6af60ee0ab1089bed74e957658bf136096b4da0eb2a4eb5c5f6a6739ec4c5201"
    "nl"
  end
  language "pt-BR" do
    sha256 "35e88d4af349da6c77cb0bab7b08fcd26b5c783e79e6a40ae574022566777646"
    "pt-BR"
  end
  language "ru" do
    sha256 "b5d9005fd91ab9ccd7a1e71f7fc6f2b11949c0629c566a73ca7369e85e29f05d"
    "ru"
  end
  language "uk" do
    sha256 "3a9f06540306c9fb0b5f36f7614f526d6457612817bfb793fa07221cb37cb5b0"
    "uk"
  end
  language "zh-TW" do
    sha256 "b17b7808334f33eb1070f9a786db394e0d48ba91acfc8914a4c4d734409c1ee9"
    "zh-TW"
  end
  language "zh" do
    sha256 "90692d04ecca1f918c554477775e525a47ec6872a431aa1c326c753feda40306"
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
