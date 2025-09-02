cask "firefox@nightly" do
  version "144.0a1,2025-09-01-16-21-58"

  language "ca" do
    sha256 "5525d21eab1f5823dea16b9079723fd1ae6183a3dfb961006c1e50048b49cb21"
    "ca"
  end
  language "cs" do
    sha256 "249b5ed9b0a7bb8234f4fc1cf87c8e155a36aef1c84baf68e122adf0bbe7efdf"
    "cs"
  end
  language "de" do
    sha256 "c057d5838e7ecdcb695c97ac2e8e056d8bdb428c9a2605c3b135947b72d84c2d"
    "de"
  end
  language "en-CA" do
    sha256 "d4e689beff5a0a9586c4d0abdf7c9f5b61356c7a4a6f704528adbde0df0acb9c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e109e111591edfcc815433a3967e4c735530f8185d69ad79ad11b6988af6fdbc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2f021f33366a98ff1af37e90c6d57726ffa06fe9cde34c8e9e21718fa53aa6cd"
    "en-US"
  end
  language "es" do
    sha256 "e890dd76c139c10b1e11153780e207ee2b3778519eb399f16616bd13ac4b34ee"
    "es-ES"
  end
  language "fr" do
    sha256 "7879c0b610910954bd5a6a59addb44d477b18cc9974430926b65fae8d27a04d1"
    "fr"
  end
  language "it" do
    sha256 "7d4bc7092ae67338b35e5ab04650adf0647fe94b5f79d80e0629e5c168e5eeb9"
    "it"
  end
  language "ja" do
    sha256 "a43e3e22c3c516024bcef87b340d73481965b04cdf833249d57ffb4e07012079"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "42add9f78d41476fb943cb95bbee4962092a95023d0f9ef5098605f33929f821"
    "ko"
  end
  language "nl" do
    sha256 "e165d4e54d67676d022ca8e5ccdb008ab1fca6275513d34e9e61ba64c7fb7af5"
    "nl"
  end
  language "pt-BR" do
    sha256 "937ceacd18326024690735b4853617cf666f4aa87b2e1dfbe951a1589a44b54f"
    "pt-BR"
  end
  language "ru" do
    sha256 "01bbefce18574d49e914e9f01884938d43fe9e840f84db15929b98fa28f723d5"
    "ru"
  end
  language "uk" do
    sha256 "a6af9fa12e8490af3bf21466b469658777ec704919c30778173ed8856d24419e"
    "uk"
  end
  language "zh-TW" do
    sha256 "df0b443498f0433dc2aa0165c5e9b7403ee18e081608064d20ea0f652139582d"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1b4b0a5ea54ecf0b1c723325b0c540377aeab34725596dd56d9414d408e8ab5"
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
