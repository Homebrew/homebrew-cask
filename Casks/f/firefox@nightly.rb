cask "firefox@nightly" do
  version "141.0a1,2025-06-14-09-12-08"

  language "ca" do
    sha256 "c48b2fcb6abab59caa61205f106b67f48cb576273947ad6dbdbfa3f0ce0ad468"
    "ca"
  end
  language "cs" do
    sha256 "6a9d209fcbf24e43a8f3542c20dd7548779d3c037a5a1499a4ab0a41d26c5f26"
    "cs"
  end
  language "de" do
    sha256 "fc0283b5f684eaf0cf310be2d8e2ec2dea2607384314d871fce7162502b8f257"
    "de"
  end
  language "en-CA" do
    sha256 "d7b522ac4fec3e55b0bef036b9ff81ea380951f68c5da3304b683166d1833033"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e83be0558fc02c1bd3c9eac01953f2623751f62d28bec3762bcd975c6fb40eb9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "86bcb948eea84d3a2f30b206471064dc7f9d12a6d360607d741f047cddbdec5f"
    "en-US"
  end
  language "es" do
    sha256 "217420d2f3c43fd6607055c35445feb54cc0ecf067e34b1f9b47cd002e297d99"
    "es-ES"
  end
  language "fr" do
    sha256 "bb955538689bb9b58cb1893dc4fe62871e4d31a3aa99336faef09225d419fc05"
    "fr"
  end
  language "it" do
    sha256 "bf9f4b86941d99ef5673aa1f1ff5f18d10e0b11b068a6563fe7c248f87c26cfe"
    "it"
  end
  language "ja" do
    sha256 "0cfb530103ca2e5e05b4972b18bcb261f465a8f8b47493a2c18621bab8d60827"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7bb22328f9d3736808b966fd0b07e5f03e27b64894c0c5855f964cd2917333e5"
    "ko"
  end
  language "nl" do
    sha256 "6e43385f5d993e4667e2950cd6931f63c0056169971f6cb4710afeaf9c63cd8f"
    "nl"
  end
  language "pt-BR" do
    sha256 "ba711910bbb98f8e4be10a1cfa116f239cb8691b041d5244125e439414c0bc52"
    "pt-BR"
  end
  language "ru" do
    sha256 "625f18b7749a68aed7efed45c4828db6ac9896cd7960ea747a4866778f1c5c01"
    "ru"
  end
  language "uk" do
    sha256 "cfb3bafc1784acd2d0205004270bcfdc52a490ee811e66afbcf5e0cf5cd0994e"
    "uk"
  end
  language "zh-TW" do
    sha256 "25f2bb24a41e792b60a8927582dfc4a9edcbd3c39871cb0f544830fe0f5ca8c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "111aefa341ccdcf514c14aca9ec04e9df1b90e90937db440952a38534d386d13"
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
