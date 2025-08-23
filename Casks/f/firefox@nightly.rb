cask "firefox@nightly" do
  version "144.0a1,2025-08-22-21-17-16"

  language "ca" do
    sha256 "a4ac03c137ca4b05ff70c00b2c2077718c68269682aab4cc95381cf18551a548"
    "ca"
  end
  language "cs" do
    sha256 "dfea47f54cf7882bc58e12146e30e185988555216ee9e18073dca3de325827c7"
    "cs"
  end
  language "de" do
    sha256 "7953111fe0435027fa27f03161e56014871b883bcead8ed75cdb95a69b805ca8"
    "de"
  end
  language "en-CA" do
    sha256 "4896fe993d3c6bec5a39ee1c67e8617cd0319457ee0c0c97c35b8d0fea5cfd04"
    "en-CA"
  end
  language "en-GB" do
    sha256 "36665b071b58142b383ef4647d3a76351a4c306cfe29060dec02fd51047ee0b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "85baf9859617ba313d09810280d93726387abccd2ceaa4acd470ac926d7f3115"
    "en-US"
  end
  language "es" do
    sha256 "27a29d872e87dcf8649903f89b296a9af1ccb27edd1e59b8278f6f26955683bb"
    "es-ES"
  end
  language "fr" do
    sha256 "36a3dd789912cbf83608cd7fd6fb180b7985b697395a3bd0df6bd41007c05ffd"
    "fr"
  end
  language "it" do
    sha256 "2c8b2fcc13257dcf622388e2e203824704b2390de8f91095a28f18efa408a92a"
    "it"
  end
  language "ja" do
    sha256 "99eef04284bac280eb22317b95a9a4d4803f7f195f70269ab90b434b6af5aef2"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0a9730c7d84be66850a2cb2a852ef04346b40fb90febe7d8fd1f26cfe7de3b97"
    "ko"
  end
  language "nl" do
    sha256 "b32bce8f3baabfb0641020649efb3335c54c41b1bba02b96b74e5daa64d38881"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c2917ef8b72202451feebd6f74a920adbd3aa52fd11149ca822271ce1799271"
    "pt-BR"
  end
  language "ru" do
    sha256 "e70005dac200e787065bcf2b990464b9ba7d9047fcb8e911fcfca6eb73102c4d"
    "ru"
  end
  language "uk" do
    sha256 "88c1451ae076e0f3cf7ba1109c12d11c873db699afb956e79d23b34127d49311"
    "uk"
  end
  language "zh-TW" do
    sha256 "3880f06e50967083ab304aca8d1169dadfc7538a1a71a43cce2e4a25f281a06c"
    "zh-TW"
  end
  language "zh" do
    sha256 "fb74263424cbffdc75711517203e9ce390954422ade828bfdbbad57e4afad6c5"
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
