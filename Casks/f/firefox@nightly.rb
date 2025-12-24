cask "firefox@nightly" do
  version "148.0a1,2025-12-24-09-27-07"

  language "ca" do
    sha256 "27b21e90bdae8a6fd088ea61375b6ba9af6e97833e948017f2b072969cfa4960"
    "ca"
  end
  language "cs" do
    sha256 "867852dadcad734b4cf830fc0f279c02aeb00202611cadbec977717d7d8f83a0"
    "cs"
  end
  language "de" do
    sha256 "68cedcef477dfa9432d1850a80a87a652fd947b173f82374bb6346788e38cb9d"
    "de"
  end
  language "en-CA" do
    sha256 "9dc3babd18deb9d665c56b8e36ed82d6ce90adb2f6ca69d60ed8e9ec6a241e00"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bbaf54a3f2a330b8a4cb653f92c7fc806664e0d5d9cccbb5568fee386199d347"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a0eba782aba9a77f3188c9533d1d143dd1baea5278d5272bd73d4ea3f5973275"
    "en-US"
  end
  language "es" do
    sha256 "4d995b82ebaddf320c24015b8ceec43b16ed106a63e733e0fd53c5e51db2d24d"
    "es-ES"
  end
  language "fr" do
    sha256 "cc1a0ac7e0c3d783c433e939ae4dcd29f47d7aa7548b847a0f598a4101e73cd7"
    "fr"
  end
  language "it" do
    sha256 "749aaf50ec629e563de1c6ac84eb1d6b27581d0896a66a3a75240168d003f787"
    "it"
  end
  language "ja" do
    sha256 "79d9c8b7a77329bc146372afab751b7b046bda9483423ab766e1621046d26b06"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "679cd85baf4c043aa786ef387072941ff0ceaadb32d4dfe1ef7ea14822db1843"
    "ko"
  end
  language "nl" do
    sha256 "cfd78b193cb322ad58bfeea216e9a6ab584f708e279243c564550f5d4bd62741"
    "nl"
  end
  language "pt-BR" do
    sha256 "de2851d44b33e04bad505522e1e67b251804804c0bba90acfe6b863deaf218f8"
    "pt-BR"
  end
  language "ru" do
    sha256 "1fba58b6a16aedecb488f41138f2c0115a836064ebaaf49edb94f275fb822124"
    "ru"
  end
  language "uk" do
    sha256 "32612cd0da2ef529916874d6ac220db290aa4cfbbcc4df091e308ab0019f654a"
    "uk"
  end
  language "zh-TW" do
    sha256 "67adba587b4382cdae448f40e44f597acb606e5977454ff1a6bf095cb6fab64f"
    "zh-TW"
  end
  language "zh" do
    sha256 "f2b432461e3780ab42c33d6a04429b2f3e81a31f2a1d87ac5a815a6d82e11dbd"
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
