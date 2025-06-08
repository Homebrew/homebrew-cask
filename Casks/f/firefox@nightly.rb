cask "firefox@nightly" do
  version "141.0a1,2025-06-07-21-52-51"

  language "ca" do
    sha256 "efb21495b23021629ab32f950078a8515857dea6c0c203b17d089442d048912c"
    "ca"
  end
  language "cs" do
    sha256 "e53b3eede8d14e21dd6441fbd44da576703b7290a6c5b5f0ead901318d0fedb5"
    "cs"
  end
  language "de" do
    sha256 "7a1a5a7ee63918c1c2189fc71a76aaab51f064a1f0f384eec4aabf58f9fcb77c"
    "de"
  end
  language "en-CA" do
    sha256 "6cde1bd7c2b9c8d271082ec9ec686ed1510c725908a1b3670bd967ea9bc27779"
    "en-CA"
  end
  language "en-GB" do
    sha256 "eae0bd9e45912d433877a9246641f6c122fe7e0236b2078b10183bc2233061c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "83019108cc79378ff82e0065d731f5ccd7e463b415c366540d7ff832950faef8"
    "en-US"
  end
  language "es" do
    sha256 "4a13a8a5df67f2f13e30e100ad287a34404069fd57e2221ec668367589e6f075"
    "es-ES"
  end
  language "fr" do
    sha256 "b5dafb0c13852e610adf4a5c44a91be2261be684f656f464801e463fb6fcf465"
    "fr"
  end
  language "it" do
    sha256 "4ad550eaee73b732bf29f307ed2eae42c3c0290f0cfbe4e42b9d508e73e95301"
    "it"
  end
  language "ja" do
    sha256 "956cd9106015edd8bcd9d507a7ec8f880768744e53c36f7fa3c3061a22daa463"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6270a3e55a1cfbe74662d312da03d1b9c8ac27948596fec3d85ec923d460c50c"
    "ko"
  end
  language "nl" do
    sha256 "7b85a2c1327adef6b47c4b6bc12e6a365adef439e75f03fff6bb4c858762d173"
    "nl"
  end
  language "pt-BR" do
    sha256 "632bf5ac94e2cd0035cae28130d47231ed9f46cd1ffe03d5d54b242e1b737b95"
    "pt-BR"
  end
  language "ru" do
    sha256 "6a9fff9a3d670293e67d160048c05808722b19e6ddab7066a31c378e28947589"
    "ru"
  end
  language "uk" do
    sha256 "053c9d69e11249319fc81b775c2c70684e0231cc0a98d338604581f2cf091d99"
    "uk"
  end
  language "zh-TW" do
    sha256 "a22540cfc236325b60baa728ceaf5f191282641df00ec7b4e37ea599509e356a"
    "zh-TW"
  end
  language "zh" do
    sha256 "3372f3cef0261e8dac14c502cd84406a46537bd660dc71dc296773a035244971"
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
