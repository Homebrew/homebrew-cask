cask "firefox@beta" do
  version "159.0b2"

  language "cs" do
    sha256 "d91e2a4276cdd2f221b9d8212ee0c9930be1fb079113cedb2d31023375d55df2"
    "cs"
  end
  language "de" do
    sha256 "3950ba261d60828866927550e96425c8a618c54fc30991cc823f94e3fb45fcdd"
    "de"
  end
  language "en-CA" do
    sha256 "a0794fe27979dd3022ae7f849526daaefbe3340c704a1098c75037d1879e8346"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2137a7d76143ae3ceb089f008c0c475045dbf2d0ee067a7267ead17092bfbde"
    "en-GB"
  end
  language "en", default: true do
    sha256 "52db572eca63096b7fe9202aaefe0c81f178f3fef9bea64c29d51574c7df17f2"
    "en-US"
  end
  language "es-AR" do
    sha256 "cbcd6a398a81add6cb10fbb49128fc705ecabe54674005b0817693bbd5603cf9"
    "es-AR"
  end
  language "es-CL" do
    sha256 "d45c4454ef40c9b997070645c434895cf2c79b1bd9cf86c29bcb86b3434feb5f"
    "es-CL"
  end
  language "es-ES" do
    sha256 "52f560002c4bef228bb476e1c34723b0d5b4743c4f7af81589c154e87e78c424"
    "es-ES"
  end
  language "fi" do
    sha256 "1e18e30e183487bb08ec7239462c6e51fa522cbd8c07d8bcaae29a97d7d7104b"
    "fi"
  end
  language "fr" do
    sha256 "e884f5925c8dc369d92b2da6596ee7f68502fe34562edb2d7e621dfdff7bf183"
    "fr"
  end
  language "gl" do
    sha256 "e763567ddb2adade6f8e146a71cd40db55c52e51be16305a0d3ebf4aff0c5daf"
    "gl"
  end
  language "in" do
    sha256 "4c0df3300524f806e39a14789bf429d23f0bf60fe562c9eb21e8471b633779bf"
    "hi-IN"
  end
  language "it" do
    sha256 "27eddc08291beaf458343669fcfa344b15ec5d84dc122661fb15909f353f3525"
    "it"
  end
  language "ja" do
    sha256 "bb02d80902f4e5cdf2c8aff03b197e7ff61e86c779bd119022340aa767e865a4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "29fafc2543a088e371f5a2d10229fb39d54d808fa37575579e68660f678d34fd"
    "nl"
  end
  language "pl" do
    sha256 "ae664351c87ea3ec26628195e5fd4f5a840fc9156e4630c6814fbddf796f86b5"
    "pl"
  end
  language "pt-BR" do
    sha256 "9469c9541a81cb3ce36efc6de22c9ab2d3f35fc58251f09d29d86128b91908e1"
    "pt-BR"
  end
  language "pt" do
    sha256 "30eb3c6ebf5faee669077c0f0fb2a91ab56e4fe29a1d0ea3e2f15dce4d4b6ec2"
    "pt-PT"
  end
  language "ru" do
    sha256 "89137a063cb4c9daac95e2684eca3496b88a23190977ae18a9682542ad5ca74c"
    "ru"
  end
  language "uk" do
    sha256 "b0706a000b396979b126e61a71a6421a711e2ac2ab9048187de09a810968fb73"
    "uk"
  end
  language "zh-TW" do
    sha256 "2a6ced318057d3f4a3c22cd89556d78bc443778f22984dbd2b89956878a00ed3"
    "zh-TW"
  end
  language "zh" do
    sha256 "4b68234f2efa0e9bc7cbf19f81f858b585bfeeece80bde83dfa6fa51756576a2"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on :macos

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.crashreporter",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.crashreporter.plist",
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
