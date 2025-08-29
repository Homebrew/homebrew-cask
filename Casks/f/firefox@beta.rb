cask "firefox@beta" do
  version "143.0b6"

  language "cs" do
    sha256 "f0e5bf242ab734d9f80219c6804c3f03ed99768fbdb27d06d7ece65eb96b5f33"
    "cs"
  end
  language "de" do
    sha256 "b8c809549419622b2f8ca4cb1c96600aeebb72651b65dcf917fa7e62d0edfae4"
    "de"
  end
  language "en-CA" do
    sha256 "b052192e8040a8019a1f881d0bace319efaa7706a99c57a5ed0a83bd7dfc59e5"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5fca0bb2c86eb3fab52e66d91927f682a5dcec69ef8afa4a85c28f53badecd62"
    "en-GB"
  end
  language "en", default: true do
    sha256 "93b2b9998c3188a5a753ac621d0ba48ee156fce97465f9ec905d97be53b6890f"
    "en-US"
  end
  language "es-AR" do
    sha256 "0500df58dc2249e4fc3631f3a808de3e1764bd1d47a90ef888c7aa3ad191048b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "fa5cbce22b8e90a2aed124afa7b2c16a6bc3914c984312ed111fee1c9950a112"
    "es-CL"
  end
  language "es-ES" do
    sha256 "f3dbc9034d389faea8b48c05484a97d069acbd174f55b70b3431ab41df19e1c6"
    "es-ES"
  end
  language "fi" do
    sha256 "7efbd00c17f4c75ce378f1a7c9eeab2423ee747e93181ae46079d61e9e7702a2"
    "fi"
  end
  language "fr" do
    sha256 "f851b543878def1b1e34d6bc160fc1872561e2d5967df8b9f1017e170b37f82f"
    "fr"
  end
  language "gl" do
    sha256 "2efde4f87acda1fd29b61b064106fd29d026d3fb5fc6e49520734a9f2cb0e34b"
    "gl"
  end
  language "in" do
    sha256 "486fbb54bc113cb67a2b11566d3bfbc86a1ee3594546ebeaf1d7f5d204394218"
    "hi-IN"
  end
  language "it" do
    sha256 "569642b04988ef21b9bd7b216f774397685d453d34ebf9c31beb9955a1f06569"
    "it"
  end
  language "ja" do
    sha256 "d9d70b1269d681388df11af666b85bf83d9c6a755564e82bada1c140771067b6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7736d21f3411abb42be530f049bb328d8563ebae2b1ec39bf50f7d3dcab3ccab"
    "nl"
  end
  language "pl" do
    sha256 "64a3743b9fcdfbad4b4823695ab36aedaa455106149b6485ce09977112ae6cca"
    "pl"
  end
  language "pt-BR" do
    sha256 "009184e21e7ee4fc9e3fd0da2c00cd20c5f28ac27ef279800973e8d7df8bd725"
    "pt-BR"
  end
  language "pt" do
    sha256 "f7e858a01e75a5acc609d7f5ae2bf60afea2cd07aeaf1148469264b4ec2d6471"
    "pt-PT"
  end
  language "ru" do
    sha256 "50970f127ee26c05b520fe5c9bfce68dd1a0b3e9f821fed66ba98735eb9fc248"
    "ru"
  end
  language "uk" do
    sha256 "71a1c41698806ed9904dd767e6ee33b1c9d267cbdb4c57b1eba8bc0d6335c2c7"
    "uk"
  end
  language "zh-TW" do
    sha256 "875dcd247aecb404bad4b508940610380f836322d93d72612666690106f9d422"
    "zh-TW"
  end
  language "zh" do
    sha256 "1e4dd7b8a236097f8066ffe6ee245f8e07c9123914154d0e3f48384d207cd4ae"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
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
  depends_on macos: ">= :catalina"

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
