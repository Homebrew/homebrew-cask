cask "firefox@developer-edition" do
  version "162.0b2"

  language "ca" do
    sha256 "88f93213fc4d4035334649c6aebeafc58148209d197cbbd7627fc6bace6a6da6"
    "ca"
  end
  language "cs" do
    sha256 "dbb588b25e9fc173b1246f9ef4117558036fe4c6d8682e3efffa18c92a1e5751"
    "cs"
  end
  language "de" do
    sha256 "3e6a6c34f312f105250c46f92252f880d7e26748b4d3cadb4781cb70feede7d5"
    "de"
  end
  language "en-CA" do
    sha256 "99bb25179d421ac756cb1941107ac15dfba9d39a7d1f40702d46c5f1d268dc1c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b0c10fa789fd7b0df0b55a0ca515d7f45ab1f87e2e8ba239d088931a279b20cc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a737ac9df80249e4b61327c4c971c10b014739deada83fd307c4f7945fa2d1f3"
    "en-US"
  end
  language "es" do
    sha256 "76a2a747e38e492a33d894a23cbe289802f2e5421484f1554eb92d3683f85f4e"
    "es-ES"
  end
  language "fr" do
    sha256 "c832326eb33bf92e89ba5824614daf7cc1a085a359f47195b2e9e23602f788b8"
    "fr"
  end
  language "it" do
    sha256 "8fbb3bd0ec0843a19faa762ce1f4ed348388efedb8ebd07ca660cfcf2aad413a"
    "it"
  end
  language "ja" do
    sha256 "bae2974ce47443d9aa4dd87831b6e74cb571349ca8c850e0e90aaf4a187c5161"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "20ef465e3284466c107dc3d0948918ef21b302e128c59193c66aa9464dcecde6"
    "ko"
  end
  language "nl" do
    sha256 "5e43c06164e7a4d32ceeb84e3192c2f9e2fdd5577778831cd5e1f06858304530"
    "nl"
  end
  language "pt-BR" do
    sha256 "aca94f8cd290ee93afbcccf00f61e0c1e0db5aeef2fcd91b5306fd88f1e2fba3"
    "pt-BR"
  end
  language "ru" do
    sha256 "781893aeb993dcab9376015fa773ffcb53528aa480d86a511902e0ffac937d5f"
    "ru"
  end
  language "uk" do
    sha256 "9d78467bfebea9782acdd7ca9be50c20e69506e84cc2db3071920d5ed8d5c763"
    "uk"
  end
  language "zh-TW" do
    sha256 "70c150ef7e6a9c3926f67f48d80e211245d307cf509a072aaa1510495a89daab"
    "zh-TW"
  end
  language "zh" do
    sha256 "054fe9a7e6426a7024056b3fc79e515db19345a563d187556f8858aaeb51ec6a"
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
