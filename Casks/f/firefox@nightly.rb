cask "firefox@nightly" do
  version "144.0a1,2025-09-12-16-23-49"

  language "ca" do
    sha256 "dd2e1c6da4f12540805e6f7e04f9995c7ee8ea516c0f10f59d6967ae439a84bc"
    "ca"
  end
  language "cs" do
    sha256 "60176efca6d8a3cbd634e0f97159cef9dfc34d2544795cdb18e0d1e01fffe379"
    "cs"
  end
  language "de" do
    sha256 "da32358fda513761a15ea972010eb68deed9af555fcf03b76395363d5076c2bb"
    "de"
  end
  language "en-CA" do
    sha256 "f675f715dd778eb648b10c0c6e5f8d1d203e3373763dbe9200a4cf96f9541589"
    "en-CA"
  end
  language "en-GB" do
    sha256 "07957bc6626a1f63924d88ca0a833e714bf7ac5a70c84aef5c06c48dcd394c6b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72617f1611a29d58ff161448560237bd862d6c53a8a59fcc00cbd02434f19dfd"
    "en-US"
  end
  language "es" do
    sha256 "720459bd77e345f62b12b6776d5ef8abca45b31f74d38346a2a5d096a60bd9ab"
    "es-ES"
  end
  language "fr" do
    sha256 "f82c5fd93cfc2f71d7f2a6a417db897131f791aac137f62d80843c0c65786113"
    "fr"
  end
  language "it" do
    sha256 "a2416dd3f3710b293ec7337c0d0298b03a5fab56b714b19fc270f8cbbc6a9529"
    "it"
  end
  language "ja" do
    sha256 "fe0498b0918062096ef8febac390b046c8a06ce06415562744c8b29ff54b1e93"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2c1cbe5bfe2194ae0bff7e43b864b3cf1a916c83e3ec2bbcb4d774422eac85ab"
    "ko"
  end
  language "nl" do
    sha256 "ca3a7f270d401750cff26ffb47847766feac60a6bc58fd86327ec4d3cb9b1245"
    "nl"
  end
  language "pt-BR" do
    sha256 "a580ccb3e73c2f763b2857c70cd32e53b6f6b916c570524d9f1d73d9fc20e57e"
    "pt-BR"
  end
  language "ru" do
    sha256 "aba3936cacf5fea097413656f5b290d947715c84c866edf0b7e15b15e900fe53"
    "ru"
  end
  language "uk" do
    sha256 "40df48044e258769e694eb390578838792084e0d348a9f72c7cddfe870cacbe4"
    "uk"
  end
  language "zh-TW" do
    sha256 "5b4bb88babaca1ff26dfd770667ffafe9613e3053d1871177feec62ea411811e"
    "zh-TW"
  end
  language "zh" do
    sha256 "6b3ea6fe17e525ba39729cc81074573b409d49006350320603c4966a6bc247b8"
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
