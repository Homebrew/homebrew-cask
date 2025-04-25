cask "firefox@nightly" do
  version "139.0a1,2025-04-25-09-15-26"

  language "ca" do
    sha256 "9b0f8e4f4117c90028bca4b83625e989c9555bd7c4ea67b932ee88eea60ca6ea"
    "ca"
  end
  language "cs" do
    sha256 "c239d87f6b5330edcab765400cb5cc37bbe048a3153c155485fcbd0237c6cc3f"
    "cs"
  end
  language "de" do
    sha256 "a5e03c3bb2d5e21d0ddb99c8d85df5874acb46f5fbd2bca45af3fafdee19411b"
    "de"
  end
  language "en-CA" do
    sha256 "5893d3100f2fa301c1ac6ff46a6693ed2c0467dfae76c1793cf5f7723031f981"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3260ac13a9e17ffc9aa9bcff74b691cd8a95275bcb651aeafd241165c646439a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e51985a1688e19896c0a643446bd3321cadb4f996a88e58019decf239fdd1a77"
    "en-US"
  end
  language "es" do
    sha256 "0b8898e7daada1e9d2e47080359ec7a4ba6dc609558222f8e86ebf1f8779f808"
    "es-ES"
  end
  language "fr" do
    sha256 "45ee4ecaa2b5b4574b14a31ffb023abdf1aaa91b5e227ab7b74395d15aa0e522"
    "fr"
  end
  language "it" do
    sha256 "fb344fd55d425e7df835eba8b5309fd1e7ff18886b3f718f7052b944b8c7598d"
    "it"
  end
  language "ja" do
    sha256 "c10ae5f56a924d63b2103a7001d8a4bb514376ffa9a7187b6092ce417093d3f3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "680a956459ac43e29f04f8b2e716e798eba024eb3b536ee77ace595fc7c0be56"
    "ko"
  end
  language "nl" do
    sha256 "9b9cfe874ec42c0cf0f602270fdf2421c6cddff5cfa205a05477585412d4c930"
    "nl"
  end
  language "pt-BR" do
    sha256 "5c8ae73d15cf412bcf24ca2dbb0ca2170f94650db92e5a3f23886b3e74818793"
    "pt-BR"
  end
  language "ru" do
    sha256 "72ecc2b7b38441f57075a301d49feda3b3ffeea7164ba8a725c966023a13c480"
    "ru"
  end
  language "uk" do
    sha256 "69829007305e1479f3a25d0204de94dda9d363bf09c1d05702f794217c884120"
    "uk"
  end
  language "zh-TW" do
    sha256 "640743442320d732ad229766091e63eb8ca365a4ba499f473bd9b92e252af5b3"
    "zh-TW"
  end
  language "zh" do
    sha256 "609ef2adec0385a67dfe6d3705cc55edd1d0d1c524282acfaf35079b7a9abfb3"
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
