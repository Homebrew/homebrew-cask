cask "firefox@nightly" do
  version "147.0a1,2025-11-23-08-39-51"

  language "ca" do
    sha256 "7f339af4a126682f0f78615f1baf6f2580510d5568c64c5605b66d265f34f124"
    "ca"
  end
  language "cs" do
    sha256 "d0425101a5bfb97e4fe8dc349bef422d80c99fa18c2c63cd444f35b200028511"
    "cs"
  end
  language "de" do
    sha256 "f5a2e2739c8a51b70f5072ea0e24ee0bca9be587f302eaef8881f2f0b7a81a9a"
    "de"
  end
  language "en-CA" do
    sha256 "41c8a9f8215935300404ca05d0886f20250d24e5b25a00ce24b164b9714e0120"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0a6b3c14caacb03825fc8b52dc683a629256b0a73bdb5d87add7e3f0ac535d37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c0c0be01caad0ab016fbe8fb3a05b1314648e3ed25c9d1b17c2a2f40b99a9444"
    "en-US"
  end
  language "es" do
    sha256 "4938c9ee04bea921d1f6ccf260c852178e83075b78c6bafdc18aa798c48b869c"
    "es-ES"
  end
  language "fr" do
    sha256 "a5544f03c4bc597a8dd79787ce7b467f64a94f8dbd59d511e1ebcc219656bba2"
    "fr"
  end
  language "it" do
    sha256 "69239041063079f11e1472a8def8a05f69304ae0797951fcaefcbe1db01d4a14"
    "it"
  end
  language "ja" do
    sha256 "654db38518630ba5630fd24b72280addc7bc5959e419fa1c6232959b50e16ba4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2b949bb7b683690e6b92c41ddab8b720d7905c37d741faa476f1426744cf56ec"
    "ko"
  end
  language "nl" do
    sha256 "cdd1dce8c9c0cbe205d52c455226ec268c2f47c02aaf5dbd8b42ef8e2f4bcf5e"
    "nl"
  end
  language "pt-BR" do
    sha256 "85f120f6cb8ef8e22c1790d7ef9add7615c810365e0928747a4ae2315d4c074e"
    "pt-BR"
  end
  language "ru" do
    sha256 "d3785e1d8d3d98f6ca9d6c05c6097a255bdd68c4a7dbafa73a180a6541c21700"
    "ru"
  end
  language "uk" do
    sha256 "fcd91ba5562d29b99a371c31240f923cf34c43a4fac840aff8f8348ebdd45e32"
    "uk"
  end
  language "zh-TW" do
    sha256 "d286d4ff9a16c354df8f6222828e9ca71de9e5aea14c65054e812597392a56f6"
    "zh-TW"
  end
  language "zh" do
    sha256 "814766715353dbf783cedd310626f1a8fb8332410c53a5695b3f22f386ea30a8"
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
