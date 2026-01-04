cask "firefox@nightly" do
  version "148.0a1,2026-01-04-09-26-19"

  language "ca" do
    sha256 "9bafe632baba889e0fcd6792892a48c78fb86155c822e75bad6f3ce2c99d5610"
    "ca"
  end
  language "cs" do
    sha256 "a687f7651610040404f4537a3bc2471d3106fd8c8b2ae152be5a295cb34ee79a"
    "cs"
  end
  language "de" do
    sha256 "d0059c0ac46b1eeee1d1ab9be32f4f4f52ff5294bf4eb4dff6d92aba52501cab"
    "de"
  end
  language "en-CA" do
    sha256 "2e0616b71270f90fc18e05803356c1cee9f3fc2dfa336d02fb13d50b4c3adba8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6ac361b3310bd4c57f04782d4232a6ab08ba307cc0add4f666207637bced1818"
    "en-GB"
  end
  language "en", default: true do
    sha256 "938c4c57b7e8967830bdb120a87a4b048e240d15f725e6755256e82102a9fd03"
    "en-US"
  end
  language "es" do
    sha256 "601239d3969bf92ceb5d59166805dcb5dd337b12a3f6bb18e0ee47a7e5df48ac"
    "es-ES"
  end
  language "fr" do
    sha256 "aebc86763bbd452b5c27a380ec884e20dc8dae8bfad13e923f09500a0bdc223f"
    "fr"
  end
  language "it" do
    sha256 "e2ef033814efbf8479c4e936fc07535b2e7f8905e3373e5ede1aaf28ece2731a"
    "it"
  end
  language "ja" do
    sha256 "7cde20869c6f3643ea2a15c8a0c3e3abdae14fa42d834b462b675c88ab97c80d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "98207b282cfc35becc8ff0c22105cffd4bb1047d4ed38aea8e233ade8e949cac"
    "ko"
  end
  language "nl" do
    sha256 "021ab0740279c5c89a49c8ac9e8d02960142824b19c5ca7565e867b855ef9803"
    "nl"
  end
  language "pt-BR" do
    sha256 "818b37af38f21e0b8ffaa73fa0c64eb390a0c0afb358922143b7e2609029c2cb"
    "pt-BR"
  end
  language "ru" do
    sha256 "b8349a63de50f44c74d18843b932d70890c6850db4f863b915b1f42c5e6cddee"
    "ru"
  end
  language "uk" do
    sha256 "f69f35aa007b56844a11e045e01992480efb8f1241b6b95f16a4ef65552201ad"
    "uk"
  end
  language "zh-TW" do
    sha256 "c8005bbdb7689c8e4d9657fe920dcee2aeeb8edaacdbaa7e5e00037b866802c1"
    "zh-TW"
  end
  language "zh" do
    sha256 "da9ef33b870cf85fea7e16529a8a4797221bfa67f457a64a5755074f1bfda031"
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
