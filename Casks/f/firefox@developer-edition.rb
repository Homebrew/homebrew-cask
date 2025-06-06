cask "firefox@developer-edition" do
  version "140.0b6"

  language "ca" do
    sha256 "e6bbb084d67a6fbf5be555682b338250d401269c9627ef350da10a8ee89f933f"
    "ca"
  end
  language "cs" do
    sha256 "d813a3aedaedf435f88ee8777adcc1177a66d6e33f5d9242ba76260c030ef7ff"
    "cs"
  end
  language "de" do
    sha256 "856aae6a92946f13ea86aaf93fb44ca0c35031250ee482f4071989c70f03634e"
    "de"
  end
  language "en-CA" do
    sha256 "d6055caf343d76151561afd55222818d8c2b9b26ceb340e9642673357e757ef0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6e3732209f5ee39b3a1ac60d32bb7a1b2862e751ddf1b55872c054579700e7f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fb86c73b608b97b7ebc8085e5d5ce17fb03f7e554af06ec91f2ea4c46f79906d"
    "en-US"
  end
  language "es" do
    sha256 "3c94db5f5a7d772ddfc9b956577f1fc6a7714e73f4d3e4195181f4f1ef9209cd"
    "es-ES"
  end
  language "fr" do
    sha256 "cd56d81c6860cc06b967863cf3b3ec3e5fbc349840d8276b794e2d203ef5d5cd"
    "fr"
  end
  language "it" do
    sha256 "222d2339bc3d374974e49633fbce2504cf95d19054d21b30fa9aaf273e99d705"
    "it"
  end
  language "ja" do
    sha256 "990d7dc6c342da01ab66443557e328e0cef630523e67a55c9fb38b3d4736abe1"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "76123869c41f0bc2874c999a1828ac1607ee8f3ac9485fa5f32e698faab74daf"
    "ko"
  end
  language "nl" do
    sha256 "fe72705ef2c8a39b6c9abbb18e9f4994360ead5c9daab9dbaca6d59a4a8f8c44"
    "nl"
  end
  language "pt-BR" do
    sha256 "6282c8798ca8273f5d2d4144f519a0f18d7fafcfe3c4588cac177f603873234e"
    "pt-BR"
  end
  language "ru" do
    sha256 "e4e9bfb23c075c2c6d77fafeaede8833aac5b43dbb7b7a9dcc328771e3ff3745"
    "ru"
  end
  language "uk" do
    sha256 "f9b93e2d0a3bb86601c0e7302d0432dabc2cafc26230ad7b4bf3979f6bc4942a"
    "uk"
  end
  language "zh-TW" do
    sha256 "02db2e1defb052dd0286869bee7966ce2e8a7b7cc6c8ba959bf88d0627c08676"
    "zh-TW"
  end
  language "zh" do
    sha256 "0797c012064060a6dab86d5f315bba473ba4287343072068954e8c5ca8500411"
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
