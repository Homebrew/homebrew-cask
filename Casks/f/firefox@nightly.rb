cask "firefox@nightly" do
  version "139.0a1,2025-04-12-09-08-48"

  language "ca" do
    sha256 "b7dc672331c5340bda3626378edfdc7fa844d1fc51f8d2a8a057d98fef1d42df"
    "ca"
  end
  language "cs" do
    sha256 "900cec4b0240a86327169fa853e5f48eac1d6be9e99106c4e21f3adfab57a616"
    "cs"
  end
  language "de" do
    sha256 "956c367e8b38da4ab8b25ea0128028f9a0279139e2113e32d178f5538b67a753"
    "de"
  end
  language "en-CA" do
    sha256 "a0d0ce02bfabb9c9916dfe174417ae6f6d0d2ffdfe9a0270e57dbcbdecc8a809"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9a4a1751758e944b97ea0148237299283c5e1a6a7dee34bed07676e0232eb703"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c457bb626fc9efb15411ff8a743670bf685add37d568de055efd13111dc3ae0"
    "en-US"
  end
  language "es" do
    sha256 "78ed7b63f8bce8d36141910de207862f80e3e3363e5b81396376c3b46bb2c2cc"
    "es-ES"
  end
  language "fr" do
    sha256 "b1a2d256daf4614ee65f7dabd55f772533d1ecf276022ffdec732fa1ea153089"
    "fr"
  end
  language "it" do
    sha256 "6bf44125399b8a621d7f8e70f955f85a8d3813f9deca8803577a5ede78eded5e"
    "it"
  end
  language "ja" do
    sha256 "5735058b6d2fec7e965b9c5e266b337f511dd5751b6efea82dbd73ce6a84cc13"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "20e01b5cac18e9ffe11cc961f83caaaa21c1e67d3fc216a09e7bad66899de25e"
    "ko"
  end
  language "nl" do
    sha256 "1b36f03727f193c1e1ad697f917c92162e6c2efcf3c54521fc37d2a56cf791d6"
    "nl"
  end
  language "pt-BR" do
    sha256 "741d13ec96057ef363f73d6bc68c44750aec83ffe205fb23010097f6bad122c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "ff76619e52cfe3929b75588c5e78bae9812542066549f5deb71738fc6197015f"
    "ru"
  end
  language "uk" do
    sha256 "286ca15d79a4f6f75bb9c0ea151634981526f01ae1f2afb9f2df6aabd94697bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "5940989f5314af7695dedf3e775336572e477667992161273a6943bae5875b90"
    "zh-TW"
  end
  language "zh" do
    sha256 "f3a0c586523c506ed9debe1cdac4fe1b156579599bc58d149c64f2ba62fa9576"
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
