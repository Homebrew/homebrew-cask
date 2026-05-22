cask "firefox@beta" do
  version "152.0b2"

  language "cs" do
    sha256 "1e8eaf9bfb94c1f90d21a20c747acd18c7dff7bf3a80cf29495172855920b8aa"
    "cs"
  end
  language "de" do
    sha256 "9aace284005755606965ecb9aab5001e357cf5d09eaba4d0fe5fd548b20f579b"
    "de"
  end
  language "en-CA" do
    sha256 "ce26913c0574da21217f2cb1f3552be2bb95af218e47052c4d773105d664a821"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b15f16b9799ab542c7f92dc8a6d77807ec73765de2ce2f8c891b8e49c837249f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6577749e99fd01f4d5156de2e0162af2f240ce9c11e94f3e9147395c0f27da59"
    "en-US"
  end
  language "es-AR" do
    sha256 "c2814389cb9a265569e1b362581f6f1a2b54633c977948ca9677b134ef39de84"
    "es-AR"
  end
  language "es-CL" do
    sha256 "a5c8252cc5f0eebcee697cf5ed1d5eb308e0b8499daeff649d5c94e0bf566b73"
    "es-CL"
  end
  language "es-ES" do
    sha256 "cc17ccbdf70509e98f75e352f5e9c2f396d5e3faa70cd497e576b67b264cd38e"
    "es-ES"
  end
  language "fi" do
    sha256 "6c9128745c0932356e1728461fd79ccbfd76ef3d8708067750841ca04613e0aa"
    "fi"
  end
  language "fr" do
    sha256 "f6cdeeb72659d73043b79a67c5e69502946fe8ce8a1ba5b0df9d1a65bf5a0e8b"
    "fr"
  end
  language "gl" do
    sha256 "4bd249ebd59fe584daf6ea8afdcc66b89d0afa2bd0eec5c498dd5ecbdbf1ea21"
    "gl"
  end
  language "in" do
    sha256 "88257e8f14ae4d6357ac9b261c2ebefb0b4ef43213ecfff5cf8a1403b0c58813"
    "hi-IN"
  end
  language "it" do
    sha256 "62833c6715f29ce22a12dc87379f26b1979933d4a465cead2b63f2de5c9595b7"
    "it"
  end
  language "ja" do
    sha256 "48156e0aa7df39fb5d9ba2d45c1f165a362d94edcc8472c7a19c914503678f95"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b9bb72d6e6329c55188996cdac44328e32547b8f907bcae1ce0991f1f15a914b"
    "nl"
  end
  language "pl" do
    sha256 "da855c2d6f341232b17db98fa92ac3ccff969d1e28e9c88a4e07870dbe1b2dc3"
    "pl"
  end
  language "pt-BR" do
    sha256 "59043ce0c8177d450d623f54d43580221c259e5d0d27755b83de0cc53446a4a1"
    "pt-BR"
  end
  language "pt" do
    sha256 "e1aa93faa9eac83d6bc7a0a6287be5a8dcaaada044b4f3da24b89d2c519e0d62"
    "pt-PT"
  end
  language "ru" do
    sha256 "efddc425515b5b22bd8f4edbd0552567fdee4ee06d7d552bafbe682649274f6f"
    "ru"
  end
  language "uk" do
    sha256 "4a8c432cbbf09e69ac67937eb96154de3e99a295f9df4fa5ba81823311e965cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "6996137fcee94b10cff2738b6c994c23c5f6a4cec6ade26b48572adb13679dc1"
    "zh-TW"
  end
  language "zh" do
    sha256 "210491b52fddbf4364cfa7a3148f230aed7a87424d6d578188a11ef007ef364c"
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
