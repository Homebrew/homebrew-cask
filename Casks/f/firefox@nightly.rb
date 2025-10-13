cask "firefox@nightly" do
  version "145.0a1,2025-10-13-08-32-23"

  language "ca" do
    sha256 "e0b931ba6dada83fa4340b6a780d54e196e5923db1638f326f07f61035534006"
    "ca"
  end
  language "cs" do
    sha256 "7ede96b7983366b0909b0e94f2da57771f83cb579ea725461b4c14f84043eb1f"
    "cs"
  end
  language "de" do
    sha256 "72a7ac338ca71b3d4dce65cacd1954c51526e0f95026c8df4cc9fc45a7a83009"
    "de"
  end
  language "en-CA" do
    sha256 "561927fc696d46761cd63ca0d7d8896aeede1113cc1b34ad1a08399692376ba5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "676ea76f6049d043a2f84199c689269d3f55d0bd60e2bd79435162449c254efd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f163468e9033ea4e4257fc8c5bdcf62d25dec561a1d4db94b5a9ba8a55ce632a"
    "en-US"
  end
  language "es" do
    sha256 "84e0c11cf4f1877f25b0b94feea1dacf62735c6aaa8ab8518722d42ceca2428b"
    "es-ES"
  end
  language "fr" do
    sha256 "073f5920c6f274bcc126915417bc17febcaa23281a54e62185460a54a4100b52"
    "fr"
  end
  language "it" do
    sha256 "80b2756184f3587449d574cd7fe9efdce4fff528a5422c62cb7361cd5bbc9806"
    "it"
  end
  language "ja" do
    sha256 "a157bfe258061aae80d460a83d142a37003f23123b522342a529a94d32e19133"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c6f875cb24d797ac4950fab54f067a74bb3a993fbf3624b189fbda24638cd38c"
    "ko"
  end
  language "nl" do
    sha256 "5167cd1d77120e606197c289066bb6d2d99093eebdbfb22d891d17fc6ad7e564"
    "nl"
  end
  language "pt-BR" do
    sha256 "75226bc54fcc2ed13245e5c645e369c87a6269fe06356cd69651dcf5edeb9fb0"
    "pt-BR"
  end
  language "ru" do
    sha256 "cc96ae542b3d4b05578521cf5e164751f2cc023b963e521db13dca160969248c"
    "ru"
  end
  language "uk" do
    sha256 "7202db21c48fbcc840cdf00a958d8aaaa3a0cdcf23db170f6f3ec5a4418954f6"
    "uk"
  end
  language "zh-TW" do
    sha256 "a78db21a839f96a92edf1594794c93f3e8975711fe1e58974bf12612cf28eba0"
    "zh-TW"
  end
  language "zh" do
    sha256 "96e8f8e2dab144c19bda5545b8dd1e1325f8dbec46d803d1b59b5fac658685bf"
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
