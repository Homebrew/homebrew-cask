cask "firefox@nightly" do
  version "142.0a1,2025-07-08-09-21-36"

  language "ca" do
    sha256 "010083b6c07749eeb5505c0e377ba917328a5dbd19ed775b7daa45eb3c99dab5"
    "ca"
  end
  language "cs" do
    sha256 "72eb4d05f4c3bcacc8a77274cf2495a2a8263ad9e44c92a851ef5aae65eb1eb2"
    "cs"
  end
  language "de" do
    sha256 "bdfc80db3a31d6abb3666bd30aa36c7babe434fd7e4254b96ec78687f9910477"
    "de"
  end
  language "en-CA" do
    sha256 "6157b7f797c352e69444c72de9d7a223d74b8f782731dbd87481600c7bc81b52"
    "en-CA"
  end
  language "en-GB" do
    sha256 "121c8361c00b48ab24cb1c9a9e801d61ad4dec8838fdc60e39eebdb6db60efed"
    "en-GB"
  end
  language "en", default: true do
    sha256 "653bf6bd9c4b85d082be250e04c3a1bc9e79a2de4034ee5b5dad88cd1f6a8942"
    "en-US"
  end
  language "es" do
    sha256 "17bebb899c10759dde3869ef009dc7de100c2bd1514c59b22db2c9481a1fd171"
    "es-ES"
  end
  language "fr" do
    sha256 "c11b6d4ecb91f37d60c4730c3ea2df9fe7f9e9dc13b216435152c69c5eb00873"
    "fr"
  end
  language "it" do
    sha256 "2aa1c60fc7fcd21738d2f0ee929a3685c582017e4f3ceb897908fd08144a7728"
    "it"
  end
  language "ja" do
    sha256 "8dd020c39468064f3d5b20708890f75c4512e0836e2474bcf131ca5ed976b6c5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "54e047126403dde88c19e80c538f01415b25b3f2c1264618e0fd396828ffd5db"
    "ko"
  end
  language "nl" do
    sha256 "e8a251a6d3b19e99d938a0c1c407818c084ea8f683c50b86cf075c624ece23c2"
    "nl"
  end
  language "pt-BR" do
    sha256 "b38556bc058da53293225ba0464f8ffbb68aef79bcc8314b5dc03bcefe986238"
    "pt-BR"
  end
  language "ru" do
    sha256 "f14b3cb2b46d2ede81603703748ec5fb4f8f07ad3a7e1c8249f395663cff17b1"
    "ru"
  end
  language "uk" do
    sha256 "7758cbb069c1f28caa1d6ea7a554ed9eecaead13255e32271c7bf4c047cac907"
    "uk"
  end
  language "zh-TW" do
    sha256 "41af6078766b772ff0fb9217a2858d3337e255a915ad7686662fbc1fc57be074"
    "zh-TW"
  end
  language "zh" do
    sha256 "e442811c9dc74eba7de91965214041be00e196cf9e2b70d710dfcf40158fddf7"
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
