cask "firefox@nightly" do
  version "147.0a1,2025-11-26-09-22-03"

  language "ca" do
    sha256 "b155ef63c3279033126d01bbd14447942e6077b41d8d075900c80a6239acfe9a"
    "ca"
  end
  language "cs" do
    sha256 "1b22b6b125eb78675c0531dc3c0cbc3384bd70de481602c33a18c1cb7e0e4beb"
    "cs"
  end
  language "de" do
    sha256 "cecedd9d7ac47a035a4f070e60218f5b6310c6f6c1ebbaa4f75f592b7d31d033"
    "de"
  end
  language "en-CA" do
    sha256 "e138f4b7d298f5f6b5415a0b9c405fd65e665d1205cc001962d11f7631b294b6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "abe1257f8b6677424c0e9c864427454a31e4d30248f641bc737b6a1415fc75ee"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71691a38d6340a114b7ef2298beaf4a48fe1f8c5be66c0a32aa36b01c9f39eb8"
    "en-US"
  end
  language "es" do
    sha256 "1dbd411579281b78397df6bbd42e34e4ef3a7984bc0f2928f87880f3a97c359c"
    "es-ES"
  end
  language "fr" do
    sha256 "0de0e17c19abfd42dc0a7541476054f3d308778f40178e700149830508f951e8"
    "fr"
  end
  language "it" do
    sha256 "3b2078a8f3a1987abd89fef56b3a4f57626a607e02b86c0b0531987964336bda"
    "it"
  end
  language "ja" do
    sha256 "2e0abcebce800fddbcf3b0ff35334e194588a8c116133359fa1252f24712e5e1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2a00e8267fe3d8ab23d80df3fe0b8b8e41b5e35378c4ad3a6a961d57e9c97988"
    "ko"
  end
  language "nl" do
    sha256 "a9d8d7d5adecaece6e91a66d5447cd5fcf8ca4f1e73ddda5b616e28eebdb6849"
    "nl"
  end
  language "pt-BR" do
    sha256 "64b001e9532daa01ef749f00a788d5925ab40c01cf4d33a6d0d073ed3444801d"
    "pt-BR"
  end
  language "ru" do
    sha256 "c992b3c4e9c9513f39cf0afac5b3c6b379da8d5cbb35510b279e6e1cd97334ea"
    "ru"
  end
  language "uk" do
    sha256 "d31a9e7826d79a8adcad7849aa544bff56175bb882eab36ae02285d0235bf763"
    "uk"
  end
  language "zh-TW" do
    sha256 "6a68bf3ec828ca5561b4d0fae7d0ebdce497acf30c5885ef92ce3dd55bf45f00"
    "zh-TW"
  end
  language "zh" do
    sha256 "39674683bf91091240ff92e05fd6780859a151368ad1cfa0c5b19c3d19569668"
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
