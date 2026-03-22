cask "firefox@nightly" do
  version "150.0a1,2026-03-21-20-51-52"

  language "ca" do
    sha256 "d9083aeb9fcfb1024a0960b2dcec4f597a2fd5c5681fa6e681b280059f8e838f"
    "ca"
  end
  language "cs" do
    sha256 "1ef93187506c9f6f4bda860f8ca1122af6914016610cd6e69a678210f1c9bd24"
    "cs"
  end
  language "de" do
    sha256 "6a55702b9978d3c288c015f5ee802d53d16d328ed83d611cda6ccd34f121cd4f"
    "de"
  end
  language "en-CA" do
    sha256 "6df9fa4939c112831b6195d58d0e8d0340969f33999ad1f51db1010965b4d67a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3d8c177fb47b5e81ce05a6e391e0808508e6864abbbef742766027be0e5923a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94188776e48d3fda3472e86bd53e756c6d0df29aa9ac02792e85ab5e119575ca"
    "en-US"
  end
  language "es" do
    sha256 "2f3c46b372a4be196dfc90de3602fb727406b1a9843f3a46b20a79197bfdee6b"
    "es-ES"
  end
  language "fr" do
    sha256 "0dbdd20ab19076a5bb9a459e0e2a26330b0fdeb4d55ff09a18fdc1b6e4854945"
    "fr"
  end
  language "it" do
    sha256 "28fa5214e74bbc90158627d94266a86bd1b5f36c60a025290fa43607e87fd9d7"
    "it"
  end
  language "ja" do
    sha256 "02793bb89fad1dc1adc1b131035fe8cb0b1d654bd3e73dbf8f3d882110bc318a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6ea2214bb33e8673f59b9e0ea639df1caf662403415148b7a7526f552905f1b8"
    "ko"
  end
  language "nl" do
    sha256 "ded710050929eda56d1534b8cc2c4228dc821190d43f0a765b4aa58d5525535e"
    "nl"
  end
  language "pt-BR" do
    sha256 "42ce8a54baad6a257932fcf0ca742609ccbc704a373c24ddfe3a669121761dc4"
    "pt-BR"
  end
  language "ru" do
    sha256 "cec9f2df61379721e2d94b91da9dd105307238ce490bc341eedb9d3e9269fe79"
    "ru"
  end
  language "uk" do
    sha256 "a64c5d63873eb95c24c705a6c1dc5ba46026ffd226f6936e6d321b68a80f28a1"
    "uk"
  end
  language "zh-TW" do
    sha256 "1aa1623af347a2e04c127e37e32e23f9c7dd35aeaa02a095e6163f4cc90e5341"
    "zh-TW"
  end
  language "zh" do
    sha256 "36073a519d53741ce7f17ff3d06c94c7a15262ca2af5e1a8148e8618aa462385"
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
