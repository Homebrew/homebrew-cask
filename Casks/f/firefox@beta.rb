cask "firefox@beta" do
  version "140.0b3"

  language "cs" do
    sha256 "cae8956a1b6be0bcc22d406eef7a1d27012e31dcbd3340b03c8ccd923ec43d64"
    "cs"
  end
  language "de" do
    sha256 "a449db92f8e9238184aca1afa2714ead4eee5c957d8064b85a06ee28ae71ebe5"
    "de"
  end
  language "en-CA" do
    sha256 "e887c18a43b67075de0950fbee2ceab00d3dec82c7581921daa61291fd9a1f15"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e7eb6732d1e971838d7cd2aa953fad9a60fa40bab42f0d0fb5777a7c6ba93099"
    "en-GB"
  end
  language "en", default: true do
    sha256 "81e8db159fff06cc947413698ed7e1a28cfde271ab4758844f25ce42d4b04699"
    "en-US"
  end
  language "es-AR" do
    sha256 "ff2cc539f933981687541f36aa33c9c0f50fe024a570ad5ef956a848c1d03986"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2ee8c11f6cc821e7b5cf04a8171031efcc035b319ef668f05e1219cfeaae06de"
    "es-CL"
  end
  language "es-ES" do
    sha256 "9cccd63e810c6dc2485c819c9ca575d071d278c25d303c7e06644f3f1afd8b4b"
    "es-ES"
  end
  language "fi" do
    sha256 "fd4d87e350a76e4b27a1a7137372776878b079f61fa8652372edfe274082fffc"
    "fi"
  end
  language "fr" do
    sha256 "bef5925b6ccbb6540fb223042acce4613f7f51a937f7d9214313521b16920978"
    "fr"
  end
  language "gl" do
    sha256 "bbbfad7dab740d3ed8de731dedfd6e490a5e67a2015bda75b453f4505f0d3e21"
    "gl"
  end
  language "in" do
    sha256 "6fc182be1a8a96dd5a5dab5edf9bcd6272709f5954c0b97fc6f0390f56fe5ac2"
    "hi-IN"
  end
  language "it" do
    sha256 "20e01876b7a2eda3a586bbd658d04672e400e2c0207083620a2ea2910b71a9f8"
    "it"
  end
  language "ja" do
    sha256 "a140e19cb6c43f334d416494e3faf181c3c3d09933b25e8bea3d8671c768e384"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b5541303b09157e6979f5368c2840c51dab29ff841f02b9dc0bee9813a918060"
    "nl"
  end
  language "pl" do
    sha256 "c084fd8619af8ea6c72d7cd44bb20a9d4f058d3dc082fab5f868e48671d1aac2"
    "pl"
  end
  language "pt-BR" do
    sha256 "2291d282eaa74bdfb225d2f48e968eed1a48808bb6a7eb08290f6e7889a02036"
    "pt-BR"
  end
  language "pt" do
    sha256 "2dff246a5a5cedfa71b5d22fb7db891bf27e8835970ac21adeaecf73a384835f"
    "pt-PT"
  end
  language "ru" do
    sha256 "771e6eea536f0fe44c213c03adbfda1126e077b04a3400fcef152e952db62f6b"
    "ru"
  end
  language "uk" do
    sha256 "7364e3a29e2b412e705779342341028abec59f9e88f80ae98d036e362cdb56da"
    "uk"
  end
  language "zh-TW" do
    sha256 "26191d7fd1fb4083f4bf79e5287c47f024606786a56c6f87cfaf4a12e5b93ffe"
    "zh-TW"
  end
  language "zh" do
    sha256 "4530f0a24d355a124470f9bb913e4664785fda206b449ceb5ff4679277396f4d"
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
