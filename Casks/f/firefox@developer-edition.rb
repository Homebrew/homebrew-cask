cask "firefox@developer-edition" do
  version "156.0b2"

  language "ca" do
    sha256 "8289a283c49ebd3e0a3800b42c5baeeb596326f115509be9f739c6c6624f91c4"
    "ca"
  end
  language "cs" do
    sha256 "7e9e284039c8322444535ec70bdb11966bd063289b7c88d1dd6182463899038f"
    "cs"
  end
  language "de" do
    sha256 "d04bc6a5560fd2347c3cb74ff58af8f1d3f45e6fbf4cfe6029753f546df447e9"
    "de"
  end
  language "en-CA" do
    sha256 "32e2544f19c03957ef39bf6921420080435ca1c7f67c69e8c5dc2be0063e27f4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1996fdcb9e2bafec34d7ff17dcf1b52c36b6077deaf97b4401ac3e950870b052"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cd67a70478ff9c5cb352a3c01d5b07574aac331911ceb787258b285e52239882"
    "en-US"
  end
  language "es" do
    sha256 "2c6fb759577ce413246e254530b9060c133f0c5134a73d3ea0fb4158b5874999"
    "es-ES"
  end
  language "fr" do
    sha256 "d699265dc0f905f1ccc000308a9376390f12416e00ca7297dfb6539fa0e2e466"
    "fr"
  end
  language "it" do
    sha256 "366461ea015e9bfaa0f69c7f4f76d6f94f7e05afa8511e0126bc7939ce477eee"
    "it"
  end
  language "ja" do
    sha256 "23a3ec876be4af693b378d1efc349abd4603b93551a22be5fd497f4ace0f44b6"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2a8b308eb94e5b67cb1029d45ed1cb1abb718825b1186f8f2d7fb499bcbf556a"
    "ko"
  end
  language "nl" do
    sha256 "1187eb17301ceb304bd840f1c9f984a5ffbd185e55bedbd9f8f4cac40c0b9fea"
    "nl"
  end
  language "pt-BR" do
    sha256 "0f8f791c976475a699f4596e7c08c4af9b93d910baf7d4a6ef9f0290c9e5ca6f"
    "pt-BR"
  end
  language "ru" do
    sha256 "ea790d1a8b70e6ebd06ed002b4a2aacf4e101ec6fee9aa0eb555cb62b43f00e4"
    "ru"
  end
  language "uk" do
    sha256 "9407810ce19fd1c0e50872c131adfcdde5ed0d39ea73143c9bc47a3713fc2678"
    "uk"
  end
  language "zh-TW" do
    sha256 "c352800f49de5454c6fea224146c05aa5d72c3cb37bb5af0565a25700a1716f2"
    "zh-TW"
  end
  language "zh" do
    sha256 "c48a20c946b13ccca23c02cccf9041748fc2326606f3ee452adf4478617bbe38"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
