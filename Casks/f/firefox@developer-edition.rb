cask "firefox@developer-edition" do
  version "148.0b9"

  language "ca" do
    sha256 "05c50ed60e5dfce93d4e6da23b9ec77a5c3820c4afc69813f3ecc913990c8acb"
    "ca"
  end
  language "cs" do
    sha256 "419319505a2bae7ecb8af8f66a8eec077a703dad9587e48ab11881a5a6e95f0b"
    "cs"
  end
  language "de" do
    sha256 "94896b4a4b44dae184602cd9a8204bd553dbf0c1fc1bce8540e30f959942ddb9"
    "de"
  end
  language "en-CA" do
    sha256 "6e2b1d476178953bfb0da3782460c6d179d80564e7e4cb8883da83785f4014b4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2bd330166cb2f1fc99ca28d5c66ccf3a241d5419d9231c19acb2316ff047b5d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11a15a528e6dfa22eb8adba2ab8e492143c5269ab94bc3153a6d8bb6bdae2b89"
    "en-US"
  end
  language "es" do
    sha256 "eebe0fdc2f68b12260260a7ce38783693f17820ca228b0791fa5e2bc3af98cbe"
    "es-ES"
  end
  language "fr" do
    sha256 "d6ac20851945d4cecb82b87d26bc58b3b70c46c41389a417ed978a30e0d46ae2"
    "fr"
  end
  language "it" do
    sha256 "3b026c86dd489b657b0eea96dbdf6d9eeb2986b726a054a0dd75ba06c49c998f"
    "it"
  end
  language "ja" do
    sha256 "79c7596fac1d4dda2137aa45641a13a59eb53caca9dcac75ccd5cdfed40c70d3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b3b134e16b8dba185798c07cf1bf58917aad93ef971fca85554743cf7e2d200d"
    "ko"
  end
  language "nl" do
    sha256 "1c54aa8a22a273f1952ca63b4e88daa6446c12e1c5fb469a353b3df8b0da1a7a"
    "nl"
  end
  language "pt-BR" do
    sha256 "18416325421650674c0a6a9fca323fdbe1e7180eb8b5ebeb6ea186787153115c"
    "pt-BR"
  end
  language "ru" do
    sha256 "09e946b7bf96974410baba0779e1cc7316aa1d88946db25da292b9ab7c492eb5"
    "ru"
  end
  language "uk" do
    sha256 "ee2809e46b6f7ce0154ede4dd3fd95703ea8994791117024f92048614eb59810"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f8c02504661853cae908dddd6d1b0d8e8a4b706406c28d65fba02ef7c60c90d"
    "zh-TW"
  end
  language "zh" do
    sha256 "d7f11756585c23ab053000a1550e2508fd88e05817647c0d90d496a3c742ce36"
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
