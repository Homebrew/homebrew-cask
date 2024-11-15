cask "firefox@developer-edition" do
  version "133.0b9"

  language "ca" do
    sha256 "a7b4d1a1b3a68a43da67f9a96a36585b4982f2b251bc8d3cd5bd96ed00832d37"
    "ca"
  end
  language "cs" do
    sha256 "d682010462a565cdf4e6290f368f6f8a0c76d230643ab0ec859fd19581dea082"
    "cs"
  end
  language "de" do
    sha256 "0b7049e258b7d26a3747aa1e6c9710b366e224b7b0c3cf56d91559dab8f1f45d"
    "de"
  end
  language "en-CA" do
    sha256 "3e719cd9334c6d46b0f79c1a951260aa3aeceadf3e73e0dc3ddb0557bb4cedc1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1c751778a3f4ef6bcfc122b4a3d6451382efa4971ab6790c9955c3a66d510f01"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c4780cb5fd41ef7ab3e8458af2f5089151be53f0496cb862c302037ace1c1f42"
    "en-US"
  end
  language "es" do
    sha256 "acd0243b835ffee6641d2603224e1fd60d955f9632e27c4cb5ac9ddde4f8c17d"
    "es-ES"
  end
  language "fr" do
    sha256 "22045683f7831ea444a1d7d1a11609bb295e452e9a0185f851d73c977bd94fda"
    "fr"
  end
  language "it" do
    sha256 "9979f9b312b95ff1b8d1200a314ea705bf0da723fd97f30690b67ab82f4b8b5a"
    "it"
  end
  language "nl" do
    sha256 "37dbcd904f38fd7ff3ce161362aaa3d35b53ca4ea2f6848ab7b60acfdc247e63"
    "nl"
  end
  language "ja" do
    sha256 "bd0b85a77e363d881ec5f2f969256d760a6c57628490e6773dfdcc3690653bcf"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b10a6f1926f728e0ad23ed29c748310a95a6e1d8e867645c258bb4fec2e9c48b"
    "pt-BR"
  end
  language "ko" do
    sha256 "05e12a3b120e0ff5a368cd98468f06e210039e497a9779cec9811d704b364904"
    "ko"
  end
  language "ru" do
    sha256 "ed5a84c6c68c7cdbdf95f40728ea429278d646c0fdc785e60f8be8f9d6ead1a0"
    "ru"
  end
  language "uk" do
    sha256 "68e95826dfa58f76d73f164ac5e5206edd8d64facdb243da30366f7bd2852d19"
    "uk"
  end
  language "zh-TW" do
    sha256 "affee1f050f53b40531886187363cbecf483ff192213c30a3f360b28bf28c51c"
    "zh-TW"
  end
  language "zh" do
    sha256 "efdf8403d04252b7b04f8b84511d2b008c17d6f9cca261fa33bc6c772610347e"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
