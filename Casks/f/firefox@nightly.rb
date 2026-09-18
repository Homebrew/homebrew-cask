cask "firefox@nightly" do
  version "158.0a1,2026-09-18-09-29-03"

  language "ca" do
    sha256 "e4270cb6541bfa9f2a1c82a0c0670c36a64ceea0b4d4504a7e3f36eb6b28dbd7"
    "ca"
  end
  language "cs" do
    sha256 "23f53de17d8b5ce546803c4ce35c4cac20ba1651e62f9e3e2c3c30b952527009"
    "cs"
  end
  language "de" do
    sha256 "29952710d737e67d3d116ae37ce8c447bc9da479fe836446816fbdad4e614c57"
    "de"
  end
  language "en-CA" do
    sha256 "32cdf4c8ae77d74295aad8e17d587d1f61ab7f61ef10b41e8ff536cb18ecb690"
    "en-CA"
  end
  language "en-GB" do
    sha256 "08119aa5c7db3e8e026dc5d932f0c48c5accb4412b3579370c53e128ae4cfb43"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b80b80385fead29bc85bab6666ab4f5221bb2dfdbb7e2dd28c6c4dcc33a864ec"
    "en-US"
  end
  language "es" do
    sha256 "2fe09f2e53dbab38da5e62996cb1bb4b730953e5ec114b83a05a95c546131357"
    "es-ES"
  end
  language "fr" do
    sha256 "ff4381e213501fef4ad15c9b93c1a5b4b26a9bb0a16c014b8c81facafb8e2e73"
    "fr"
  end
  language "it" do
    sha256 "5d23cb061606d391e12c828f64e87cecd17f780f1389fb75ee84ba0c6ff05a26"
    "it"
  end
  language "ja" do
    sha256 "5424d0e30dbf579e62000e462c313ae8fd1ebc460d954f139a9c2cce0fe78647"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "29c5b33facaaa3109f9ced48a1c4e23a1e677886debc7555747d2fc146bad176"
    "ko"
  end
  language "nl" do
    sha256 "ce0e3d89c774298f3161cf671bdeeba3bb76fd8ac7f1c728c2fcdce389bb2729"
    "nl"
  end
  language "pt-BR" do
    sha256 "a0faeb9804400e01d5da9a45c252b25638dc86a7a656486dba98b3bd4014e989"
    "pt-BR"
  end
  language "ru" do
    sha256 "f68dd8385ee3cb33058231baae9652e5d6fc9f477a97004f2257011da23f18fb"
    "ru"
  end
  language "uk" do
    sha256 "20193b38addaa7a24e7fb74d098d86794661fa6729039722961d68ad8930b5b2"
    "uk"
  end
  language "zh-TW" do
    sha256 "49448e073d72ae4bed61aad6982195596999c21841ea01fcd58133f3f1510295"
    "zh-TW"
  end
  language "zh" do
    sha256 "63288e4f01ccfcdbbc9444ac8924a5686b05598ba83b4bcb7a24ed6a05d69f80"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
