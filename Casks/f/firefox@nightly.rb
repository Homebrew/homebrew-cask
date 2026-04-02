cask "firefox@nightly" do
  version "151.0a1,2026-04-01-21-21-32"

  language "ca" do
    sha256 "d8e6b505f0b3d2ca041a5e0a3ef69aded781a4f6e685520d6900d51c5760a227"
    "ca"
  end
  language "cs" do
    sha256 "fba17fe17201dd6a47f9e33349302ae952ba72987d497476b5e88d7995268703"
    "cs"
  end
  language "de" do
    sha256 "a4e70a10093122935999e644d46c2b89b652de217e97530c9d825f6795a786ad"
    "de"
  end
  language "en-CA" do
    sha256 "3271c2e471238448d9910f4cc1502e0b552d9eea48b627f8b46f887f89fc7904"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d83817e97e865ca7527df33b67cfabd6f19dbf8678a5968eeadbeaa5e4041095"
    "en-GB"
  end
  language "en", default: true do
    sha256 "10ea569f80bf3c71b9e420fbb14fe82c271ec7ace740aa383062132b85625272"
    "en-US"
  end
  language "es" do
    sha256 "08388a24dd48a21cc6f10153959a1f4eed754db063477f96e3259fa85ae07b47"
    "es-ES"
  end
  language "fr" do
    sha256 "bf8b36ef27943bb6d93e123a2ed753aa0d1db843b62ba3ad23f6d037ca8d6632"
    "fr"
  end
  language "it" do
    sha256 "3cdcf7fc156909a89f3f41c7139c921501dc6be8eb0f8c9e37a3530623bf1bff"
    "it"
  end
  language "ja" do
    sha256 "dab4aca6d58d6b872349d6000a1c1cb9ef4949f692add41227e4735166fe25eb"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f3638aad86f11114a8ed8a10abfe2bede16f3c652d933e2958a66dc857a86061"
    "ko"
  end
  language "nl" do
    sha256 "4494459352441a258a6a79c6e3d71d9833655d43b58ef7bdfa4393d62ceb48f7"
    "nl"
  end
  language "pt-BR" do
    sha256 "b5c246754840092352d88623be8c7131dcac5ae510dc86204fc5486201adbbdf"
    "pt-BR"
  end
  language "ru" do
    sha256 "bbc74ad260e897f7a66a1720cefa2e8f1ae5fe95d51da07c08c72fabe9d6ee3f"
    "ru"
  end
  language "uk" do
    sha256 "c7a46b92bc57dd750a49bf493991a3da7d585e0e42f8df2b39144361f01c0762"
    "uk"
  end
  language "zh-TW" do
    sha256 "b737f5959b60426d54355ff05ebedabdd7be4d150208e55047dbe60c76483ec7"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b2d63e6928e6190e4dbf23163b611bd8827177f6e61a5754b0eb790805561a0"
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
