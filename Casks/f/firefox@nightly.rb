cask "firefox@nightly" do
  version "139.0a1,2025-04-28-09-36-32"

  language "ca" do
    sha256 "3aeba026a9adaacb429aaf0a8806bc8ac3ff927fa7d44f942a8970c1fdc0a61a"
    "ca"
  end
  language "cs" do
    sha256 "7cf74cff1538bc64b35dc9308acf4e6fba2f05494744f36acd61ddbf9c0a0467"
    "cs"
  end
  language "de" do
    sha256 "5cba419e0535fd980d68bd33779d9b3047a0c625e80337b3a59a5864cbaa0cab"
    "de"
  end
  language "en-CA" do
    sha256 "7ded71d6b884327953ad335f43a9d75b6a6f126ad13801109185187e170012d6"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7ee4d540e2770fd33e2a11dbe5a7051f894000051f9f39c34eba63f9ae0864b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "045c4346d71033c1d0272bb233c57e4e73716f241079b8d4be9ffdfdb6ae2485"
    "en-US"
  end
  language "es" do
    sha256 "5ff42b1d487c30039b4e10613460544e829cc21280bd1e4cf9de46ca9abb8d3f"
    "es-ES"
  end
  language "fr" do
    sha256 "778c140fbfa402b6221ab16a658303f498bce99920990b8988fa2c42671331f0"
    "fr"
  end
  language "it" do
    sha256 "28e1c7651d8cf30009d4234f4b4128541346145e30c0d08d415705ec4f28254e"
    "it"
  end
  language "ja" do
    sha256 "3024f58e2bceb5e997f402d874201efbc629e13d59540f20c8c672a414c2056b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "847802d7c12b6a5e2e830078bc5bbaf90913217a5d638393532a3b2e6799116f"
    "ko"
  end
  language "nl" do
    sha256 "502291759ca27084892e326810990e412f67cdbedc54d10757e960ede92464bf"
    "nl"
  end
  language "pt-BR" do
    sha256 "f7d05ba777402aaf187e40515bedbdf893077babe4e9a413dad03407e1c31ffb"
    "pt-BR"
  end
  language "ru" do
    sha256 "462ec4c808ef622d1bea8f650d9ed673a62feb3f743014b83a4246926915835c"
    "ru"
  end
  language "uk" do
    sha256 "c603d65f3ad3f90ac70d23a34a1aff01a933497e310a71508427e22ee42dff18"
    "uk"
  end
  language "zh-TW" do
    sha256 "dc01900d08f997a425fb759a93b48722592232ce372026a304e181aa86a9a0c8"
    "zh-TW"
  end
  language "zh" do
    sha256 "4387f052a28c86152743efcf4da9acb4ea4111d2338b18e70a0d63073ea42312"
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
