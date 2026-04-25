cask "firefox@nightly" do
  version "152.0a1,2026-04-24-20-47-44"

  language "ca" do
    sha256 "becf20c701dd20fd3c85414487389ac9f917cac3c4f7659f6fdbfc1ff0fdd7ea"
    "ca"
  end
  language "cs" do
    sha256 "bbc9f87331f41a7dfc0181553b23475b8436b02fa10637ffac961a3c7910b1e4"
    "cs"
  end
  language "de" do
    sha256 "355d5224a2a01cc40c020805732f80d67f4faaa6079221e2a117273dc639d5b9"
    "de"
  end
  language "en-CA" do
    sha256 "ad24445103746a9e365ec549c589321528f3f561e2485813c99778142fd4d1c1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c527329ad648939121e8abb91222be2beca0f0485507712f009243341ea628a6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cbfb80589d500c3ba7ba15d331ca575933ff97de2b3a3bfb3e8458b916ecffb9"
    "en-US"
  end
  language "es" do
    sha256 "ae73b175f05364e553642e0807d7ecda181130fba221e5220c0889bd5762ca34"
    "es-ES"
  end
  language "fr" do
    sha256 "5cec9250181ce2bf29666e773836317f6bf5232daaad28a83ef49ec541d23ddb"
    "fr"
  end
  language "it" do
    sha256 "7ec2d04b2ab04d6fc06a7247cf8ca4ecc7f1d59cf43293ba0b271bb7dc164337"
    "it"
  end
  language "ja" do
    sha256 "519944f7972f2f7c5e0829dbca0cb8ce2c320359d91b0011003cf4ff62bd8a68"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "da1d47fef181a1f6b011214d82217457359a7d777d1b471a4250ba7e35b849c2"
    "ko"
  end
  language "nl" do
    sha256 "f60b171ff315b20a087274b77161895494e73c7e92c33419e6608686cfd05346"
    "nl"
  end
  language "pt-BR" do
    sha256 "091e3c5edaac5dc92e31ced92f329a69c01182069d1d25cad6e6d63d85d98e11"
    "pt-BR"
  end
  language "ru" do
    sha256 "3942ac265e68f8cafb15ee0a5ff98f33f60889718bd8ce9ffe68c69bb84ea0fb"
    "ru"
  end
  language "uk" do
    sha256 "308ffc2125af8cfadb1fba3aaccce7119d04b5cdc3a6148b31e18251510f9bcd"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c25bbd1e86ad7b148383577cf178745a26baa4cf218d38bd3acd1daec1f1409"
    "zh-TW"
  end
  language "zh" do
    sha256 "e8fce0f9c47d5881a78df8aa6a7d5646f9a393472f174d1688cf128f9d527c0a"
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
