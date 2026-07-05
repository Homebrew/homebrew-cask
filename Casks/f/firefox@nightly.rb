cask "firefox@nightly" do
  version "154.0a1,2026-07-04-21-31-49"

  language "ca" do
    sha256 "589a38e7cee1fcbeadee93c86be27d1aab6e7f31befb69210c0370c627b685ea"
    "ca"
  end
  language "cs" do
    sha256 "1f8eac16d158dabf40b4a9a204506025a6a91309d28c84863307314b408e28c1"
    "cs"
  end
  language "de" do
    sha256 "b46dda6421b4d2e2588fb5496eace729eb42725e4b36c825ad62fdc3ed825d22"
    "de"
  end
  language "en-CA" do
    sha256 "0b2717c0943b55bca8b16d7288648b7b1024e7b4f72c5bec214a473c44952a09"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c5bcfe8ef13bc188ad8deeb7017b6fca6505eeb82390d43a5b432875fee2286a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae78136e9238f522afd159dbd215d778427781ca52229e4198327515ecb951a9"
    "en-US"
  end
  language "es" do
    sha256 "276b367a4f3a8e9f096d9e15abe74cad137e2d52c6a309eaf5d4d83aa898023c"
    "es-ES"
  end
  language "fr" do
    sha256 "f15eead644d0530490cafc6d4957b1203d5da250bb470c2e0408f7a8d027c8e0"
    "fr"
  end
  language "it" do
    sha256 "1fc6569237e7c9337843938ce1ec2431903ebf1cfecfab3d9de9dce63f8c4377"
    "it"
  end
  language "ja" do
    sha256 "6b8cfa09e1dad87a0d3cf4fb76a5588181e76428759f24092d2a77ebef7586ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "6c4002848d7648fd8d00edc8b081d04a9e6d472bd85e03ca6b8977adf4b18eb2"
    "ko"
  end
  language "nl" do
    sha256 "77d000ae27b28f82b3e4a3f3c0ca239ed130c1bffe5d6ded9d19a37985bc8e34"
    "nl"
  end
  language "pt-BR" do
    sha256 "fe87059a2b0d3d31e6de74d303a8a99388c614161ec161ff43169d55a55f4ae1"
    "pt-BR"
  end
  language "ru" do
    sha256 "be79186c12ae186d217b661157cd5d969aae6456241748b6d84a4c1280bdeed4"
    "ru"
  end
  language "uk" do
    sha256 "be150921cc6166ed7bfcacb682c2bdf17d8bc9aa6528dcf659ba60c0c4ee21de"
    "uk"
  end
  language "zh-TW" do
    sha256 "588c049d87edf954b1b714b2b1390191fbb9d5370f94334a625dd8a2499ef1c3"
    "zh-TW"
  end
  language "zh" do
    sha256 "651dc89baa267b15e78a9faed8ec8498a78987e72737fdbafdb1646ce90723ff"
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
