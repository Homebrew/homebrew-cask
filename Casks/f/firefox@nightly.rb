cask "firefox@nightly" do
  version "152.0a1,2026-04-21-08-56-57"

  language "ca" do
    sha256 "0a6b1c0013547276c8eafa97482531cdda6dae66d13b7fec375bf7119c17599c"
    "ca"
  end
  language "cs" do
    sha256 "8257b1d55fe423ddd0669cede748d4abcb536fe647e42d8da106d90c3c5c2324"
    "cs"
  end
  language "de" do
    sha256 "3da15f307fe9f3ee9f88bb02076d7f7e651f652a7cd9eeab5751d4129101a245"
    "de"
  end
  language "en-CA" do
    sha256 "ee7f0e0773078a6ea3905896a6d788653350499fcc20f89c7ba918810903086a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0c6b8007abc0c7a731771c8c6055ed25fc74d91d7981b02d558201bb9fafa51"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d999d953abfd28ac7e7982b560ab1742340359adffbba18702e751bcb9f00d77"
    "en-US"
  end
  language "es" do
    sha256 "8aadd17bf2a971323d57c67ea2231a9dc04511bfb15c5d4744a489eb255796c1"
    "es-ES"
  end
  language "fr" do
    sha256 "10c3c4f5f4b7198bcc3c8192b12f5dc115b0ce78a887ab140e06a7d20df11690"
    "fr"
  end
  language "it" do
    sha256 "efaf16e147a809c64d9774fbe2b208e88dea860f854a2ddfb54c1d652c2ee9ee"
    "it"
  end
  language "ja" do
    sha256 "2d9a4b527403e23bbcb947a0525fe3d126c2d0641e547f2ded461042a59bb42c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "964004b5cc0eea72ff264d00e90b6423263670f11478ee8d0fa31e510729fdcb"
    "ko"
  end
  language "nl" do
    sha256 "3eed9fad85d727223daf03a1f9fbd5f3d2587d038fb25a8fda9b5675ca1aab48"
    "nl"
  end
  language "pt-BR" do
    sha256 "82551353e0d3a1797e8dc295ff5bda7dd3c0ef6dc72375c7b1acc20d9ebf207d"
    "pt-BR"
  end
  language "ru" do
    sha256 "12ef0feae4fe3b612e5b2010a1c90e22f14710cf5ebc3abef4bfb4505980c031"
    "ru"
  end
  language "uk" do
    sha256 "612cfdc8e88bf92879ecf5503acffeead05cfbad6dd615246312f362bdd241ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "bfe727c2f84a4bf0875df7f4894095826699fc4ca38bccb82f7c0c0c8a34edf2"
    "zh-TW"
  end
  language "zh" do
    sha256 "b3c056cdfde18c6b3e95f58c6774b6c0fd1b341cbcac1a7c0cdb43650ad39195"
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
