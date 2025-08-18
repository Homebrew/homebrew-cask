cask "firefox@nightly" do
  version "143.0a1,2025-08-18-08-37-41"

  language "ca" do
    sha256 "775d2f50eb77450ce84a835314e6a891a7a81a1c631997f16c13571b985d1539"
    "ca"
  end
  language "cs" do
    sha256 "039f60766066e25d41223980a0caad6cb348d5d51edf99545b0d261a0475390e"
    "cs"
  end
  language "de" do
    sha256 "f227c68c16d5fd2932e8d947a20b7793b5195b1d1c30aa1665ec11985a2c0c12"
    "de"
  end
  language "en-CA" do
    sha256 "f219e98008c461215a3166117aef6a38ad730e5356d231257e392150dc2ba671"
    "en-CA"
  end
  language "en-GB" do
    sha256 "32f0220bba32dbee552c6f57694adff1adfdaa835646e8c185b028266fdada36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2d4a459b5fda769c00f6c2119c99781c23fa874a6e7d666f283b287bf1390458"
    "en-US"
  end
  language "es" do
    sha256 "fd0659b41c6ab44794fa3f0983844ede58c7864e4460223ad334dde7c81f8afa"
    "es-ES"
  end
  language "fr" do
    sha256 "f1acfa3857fc3ed1bae9a6d6500384b2392207681f222e58e4c65824f20bd4a5"
    "fr"
  end
  language "it" do
    sha256 "a7a89c1269483091d72fe27fcfe377f72148526a482b0f4cd53dcfaea05bd30e"
    "it"
  end
  language "ja" do
    sha256 "321a7e1ecdb7106e81b9650aa47aa54e0dc55c9e99564b10e7f3b605920241e4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "be0e03a793a548cb24a59b0c67bca4680dd769092c3d3d5e98f5e7fad731df75"
    "ko"
  end
  language "nl" do
    sha256 "438427d9176c2f04ab2b53ef19a056299abab484f03c1fc61323b04367cff321"
    "nl"
  end
  language "pt-BR" do
    sha256 "80830f503103a618f07ae40b7cc2628f32a4638b472bc5040a13ee4f31dda20a"
    "pt-BR"
  end
  language "ru" do
    sha256 "09e935d6ab51182edc8e992685364e297b991a497aaffaae15c1032f4203add4"
    "ru"
  end
  language "uk" do
    sha256 "b4bd53fc0b3375b94cc0106c9a4a454aef1b570227c784d0c51d08d2502dbb77"
    "uk"
  end
  language "zh-TW" do
    sha256 "ebc1dda82aba88dc0f0b83939adb19ae9c4f5f125456a09577c81f98720d33f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "f9812a01314436cbadbed9f155d9169849d27adde5ee1d27a516136584049b1f"
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
