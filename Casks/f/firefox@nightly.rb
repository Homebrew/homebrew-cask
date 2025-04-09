cask "firefox@nightly" do
  version "139.0a1,2025-04-09-09-41-21"

  language "ca" do
    sha256 "e5d3fd822d9579dc9973db280bbb9606fa1b781dbf858886477339700b154095"
    "ca"
  end
  language "cs" do
    sha256 "fa9a83ec1296f7da2b4b7ea2c05a524fc472645668e4e71ffe51c07de7efe79a"
    "cs"
  end
  language "de" do
    sha256 "52176e7309aeb6694f26d696cdde87f0fdb1aa45a88d1cc3ea4e8eb57ff31477"
    "de"
  end
  language "en-CA" do
    sha256 "00866f23e172253b6cf165ae36b7a52ff9d5528beb65a60bb1d79f8fc4e9f28f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c7d215e224712661708fe3f18f0d8c86ebbd9f6991e5496103b3e4c4e9532016"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f8a77e13d0b321d6107c09b3896eb824cfc281ecd9bd31197aed762ae23d00fc"
    "en-US"
  end
  language "es" do
    sha256 "b1027c4f5ca99939f0d6c7153cb7895a16b52b9957fc682f807b581a41a32a56"
    "es-ES"
  end
  language "fr" do
    sha256 "f62ddec1c9b1632e956ebe1f9fc16311867db78f83cc71f30023eeb60c36baec"
    "fr"
  end
  language "it" do
    sha256 "ca3bf066b061bbf224746513cdbde81f4f5e730a0ae52748288cc3c8573649eb"
    "it"
  end
  language "ja" do
    sha256 "e2405ecd3171edd52d1decee1a624473bd146d31a8f8155a1ce4d00a28ba2da0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "fb15af67b6f23a214993a688d311a042e69644898bad36857b56e31a4309f962"
    "ko"
  end
  language "nl" do
    sha256 "d148b9deb57ed24e20219cf3568414473e2441d681d5a462234516b21685c1cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "c63423b0a145abc68c9fabefb311af33a7a88a48c1259ecac62915838a23534b"
    "pt-BR"
  end
  language "ru" do
    sha256 "c2d4aa8f78aa99dd8754f5f4774e443839fbbb9b20dd4aeea5b878707d7c656d"
    "ru"
  end
  language "uk" do
    sha256 "712a447685e48f8d1f1b0a74938138239f5a937538a8fd8f417be94399017c86"
    "uk"
  end
  language "zh-TW" do
    sha256 "42ed20900b54524481d24d442907d6fc52f4cffe57294b47f3dc620fee7d5ee4"
    "zh-TW"
  end
  language "zh" do
    sha256 "bea785289a81ef0c1788fc2528de50276df2eb861faccf090ada05e500e3316f"
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
