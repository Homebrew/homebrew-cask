cask "firefox@nightly" do
  version "148.0a1,2025-12-16-21-12-57"

  language "ca" do
    sha256 "d5934fab459cf3ad98ceb0ed6c16dcedd6d6cf4f1d537e04d96e80f18e115f63"
    "ca"
  end
  language "cs" do
    sha256 "863489af228fbb5204e22099361c3a425c7bc6dbc9d365e7030761dd93569fc2"
    "cs"
  end
  language "de" do
    sha256 "b96a478a157088dfe6a86d69011daf3e20b41d3a7a46c66a153030d8a4d3119e"
    "de"
  end
  language "en-CA" do
    sha256 "ab25fbd25c9affc8bb3173d90a27c4ae8e434eca643f612b582eddf311f515a3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02208d6cad76616ea6ba4acc71719017455ceccf8b34c9f4aa597d4b6909f22a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2e78ce0cb5ac873d305643c78fe7aadf2fdf50380eb3e4f94ef0dd0123c3f10f"
    "en-US"
  end
  language "es" do
    sha256 "8a43d358e2375eeec1d84809ea302e51b9dd7b84d239ca0647a464a0ad111549"
    "es-ES"
  end
  language "fr" do
    sha256 "267dd3657e8ec65532561d24027235fab83812295c9c53948d6ef3177e40fcbf"
    "fr"
  end
  language "it" do
    sha256 "467487319e17a731042e1edbe866b1508d23ce5641221e57f8917ff3d94e0c82"
    "it"
  end
  language "ja" do
    sha256 "d427fc49149688c735cf2127c869e879d75cdb92213e413d87157ea5992280f2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "015e25e5b66f2e917901983f028629ee507403976b8020486110cd7f1eb0146d"
    "ko"
  end
  language "nl" do
    sha256 "e8ad7654b147b0da818b9c9da46772db9365a01788aff82b6b94f79607d611e1"
    "nl"
  end
  language "pt-BR" do
    sha256 "ef36e1705b0ec0f45b6dcf9fc3566d7986a8e2ecca403aed2c139dcdfd2913a9"
    "pt-BR"
  end
  language "ru" do
    sha256 "ba22454f5950f15f0cd58912d77b90c836efbca4829b25bf31d75295bd10e524"
    "ru"
  end
  language "uk" do
    sha256 "a226b137e8c6ab865960aad1572ce5b2aec56ec6cc0a95d196d663c012a17525"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec11362c3989cf970f2d71217d1aebb0dc32b3c578fb920ecf204ef581d7ac75"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c56d43bf3e5392838ca7623dc012905c4c3d16b209cfd5192bad1c560a46681"
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
