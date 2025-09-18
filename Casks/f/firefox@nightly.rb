cask "firefox@nightly" do
  version "145.0a1,2025-09-17-16-16-33"

  language "ca" do
    sha256 "d245edc9e225050fd6afee4aea7204cf7ddb7d2ba4956efb7dff995bb0a60d8c"
    "ca"
  end
  language "cs" do
    sha256 "d664b05948297aafe142c2fe026f1fbe11cec55a030a61afa1d40a47c877cfb9"
    "cs"
  end
  language "de" do
    sha256 "dc834cc1f7de5d0a1e78454559d21e9d45bbad8357c63f67ae7af905b43addd4"
    "de"
  end
  language "en-CA" do
    sha256 "30e2ce2517ea254eaaacd7232704f86760a7a6e1075f2be41c382c80bee747bc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "05fb7a8e48115198c21e4702dd64006068a8d473b0fb4eaab338ce77c1919c06"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f731dbf571ccf9427bf7f6f5dbd97fd548fe4eeaf99098415539c409d94689a9"
    "en-US"
  end
  language "es" do
    sha256 "8e5501e71ee90e5df6275ec064e3c50d483695fbe62b6fde59f0d67aa464d0ef"
    "es-ES"
  end
  language "fr" do
    sha256 "ff32b7b0e4ce58571e0ecd3e43b6fe6bfa5471bd5a2051b8d3110f33f227d74c"
    "fr"
  end
  language "it" do
    sha256 "92e43feadcee8995c9bbad0672baa78cf7f726f2223de1205d646de8bbb670a6"
    "it"
  end
  language "ja" do
    sha256 "05d375e812c03853abfbd70dbb88fe62b4b42bf2e288507cb7121cbf019c413e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9da337b77f38f1f8fe54ec911ca309cfd14f1569229afae13986ba275dc8d0e4"
    "ko"
  end
  language "nl" do
    sha256 "df6e61df9710ae9b14f072166f4a8e09460dbb0497d1c1199058f047ad419b92"
    "nl"
  end
  language "pt-BR" do
    sha256 "98bf272505928ff537f6965d80265fa916747c901c5f5abe4901fda7d6be1fc8"
    "pt-BR"
  end
  language "ru" do
    sha256 "39df9831fdbf3309fe8336a5378768b91d61fb301618f1cdbb35c59d5c9d8897"
    "ru"
  end
  language "uk" do
    sha256 "c8b9108aeba609823dd744b45ab55f07d5263aa0567a88e03bb7741ecbd7087a"
    "uk"
  end
  language "zh-TW" do
    sha256 "01f714ffeb22e7a28d7e7106eaefc26a99da702a2d01f7fcf50fcf0161677b6f"
    "zh-TW"
  end
  language "zh" do
    sha256 "b90dfc248a0c8cdab05d884bc75fb8e9466eb6909433cdabed4e3f5f444ba144"
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
