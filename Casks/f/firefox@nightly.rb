cask "firefox@nightly" do
  version "145.0a1,2025-09-24-09-40-45"

  language "ca" do
    sha256 "4cd275dd79f6b8853a08482a660e22c83b88a828fc9c5c54fd6b12cc695d786d"
    "ca"
  end
  language "cs" do
    sha256 "879424acbcb2207b0567bd062d548f3a3926c5f8fea51d01d851c077a949fd0d"
    "cs"
  end
  language "de" do
    sha256 "d4c9ae0555fd6cbb5f80db8afd56d5c2891ce514553dbc7fdf26990579c8a0fc"
    "de"
  end
  language "en-CA" do
    sha256 "ea49768d1a89c115d25af16306adea4d36af0eb377d5469887a8ac4a1443f402"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d14da4aa9c5441ae20b6f94fed2dde15c4c57de184b45b583cbbf99de9d1b62"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7cc148776ae61976735528d59c1a75c907ea388e574cec52157bae0316d1544b"
    "en-US"
  end
  language "es" do
    sha256 "0518f353dc6e1ef2987ac2b60f53742237390f9b5d10930b1b9a595784216391"
    "es-ES"
  end
  language "fr" do
    sha256 "b4ffce568b6c93e1796a3255d7e52de0830f0cb640686fbd4d4adbc0f885a645"
    "fr"
  end
  language "it" do
    sha256 "bf2a082b6d4bf04660c6e7eb47f6cf7626664b76d57cd43a2b390f87831fbd7d"
    "it"
  end
  language "ja" do
    sha256 "8eaa9b5fa8057ba4af570198af2eb4ce84878dc2fb2387e6546c2ae0afdeaf5c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3bb1dcdde77d17bb9a69dc9053ca4e1cd6d36546dc75dd5fe6f2bc1cfdf0c00"
    "ko"
  end
  language "nl" do
    sha256 "b097ffe9a4a3f8426d99e8526c2964c618a6f70db2d64d10bc4d3c6005a84795"
    "nl"
  end
  language "pt-BR" do
    sha256 "5c6d5da9769bb056b5fd107762acf055d27d5a840871aeced03371cbe555e9d3"
    "pt-BR"
  end
  language "ru" do
    sha256 "3fe9d8dcf8a27317c0a70ee5dff3fcbdbc62b46bafbb1dd71eda9af5c5c8ce2c"
    "ru"
  end
  language "uk" do
    sha256 "39a3d07c15b139c82da48ed513a2a064b98a26deaef9d0c9f0c9af3c2b3a65cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "dae2905e009eb00fdf17d54cc9631072b301cbafd3dae4f362a46208e6ec3903"
    "zh-TW"
  end
  language "zh" do
    sha256 "ebaa17db0998db1b3b7e78a62aa39bf2e53cd69cf2bdc9df8d66808bbbeb8c1c"
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
