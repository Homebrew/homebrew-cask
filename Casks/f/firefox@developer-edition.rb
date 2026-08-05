cask "firefox@developer-edition" do
  version "154.0b7"

  language "ca" do
    sha256 "26ba54b9622db53eb1c3c228d44bbbf3092cb6ee2defc624482757cd705b50df"
    "ca"
  end
  language "cs" do
    sha256 "35cae1af05a15c7611db6ec810067ef96096de0fdd9a0b561aac3bb7cf4a090c"
    "cs"
  end
  language "de" do
    sha256 "ec5fe84e1054a3b78e6700119cdaeb5a270fbf4f9ee74590329e82d3f053e6df"
    "de"
  end
  language "en-CA" do
    sha256 "2c43e4efb8140fb40abecdfa5698887c3e30d574ac9f875dab3da0ab6a3e7682"
    "en-CA"
  end
  language "en-GB" do
    sha256 "7f0260c01140be10f55eefe09893f58c866b331582784b05bd898a79f20556d4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "31e84c8b4a47bcb4bc6c411e23c542fa519afdb2fd3d6d75476f8c8147e1dfc2"
    "en-US"
  end
  language "es" do
    sha256 "2940dc5e75c5bea5e7cdfc1edc513b56ddc9b4f4778f9c715dd4ed1d3f8560fa"
    "es-ES"
  end
  language "fr" do
    sha256 "c460ad77d5f9a8ffcb65da668d4725a8c437dbe72886e353183cc954a5cf1531"
    "fr"
  end
  language "it" do
    sha256 "c356b2211210ea7b593cfbeaf71b63ef4be503006e28058134556123e9cc9e87"
    "it"
  end
  language "ja" do
    sha256 "6f6fa5b668d11b3f0c00deb63759d0f5a25e0a0bd20d539e1e4386bd2e5f925d"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "218f266340b867925429cf867f8328be7c2543a2c7f56d473c7b04db50fa3f4b"
    "ko"
  end
  language "nl" do
    sha256 "74dd2531e6f853a99e97917a960349433f427337702f5f4be157941719710ae1"
    "nl"
  end
  language "pt-BR" do
    sha256 "b184c542cd6e150196d8629ba110c4720c362ab98519b95dcf68cf71fedfa687"
    "pt-BR"
  end
  language "ru" do
    sha256 "d4775e6190c973c33f73a98698eed89279f30300f68cd3905e5a8519356427e5"
    "ru"
  end
  language "uk" do
    sha256 "682a9c507f7eebb0ef17eab6a0e4e02d37162d8f62389351e2f950602c185399"
    "uk"
  end
  language "zh-TW" do
    sha256 "080dd1924b699fd9e6a61f51df53b9a0e9897dfe3d2e7d27f22688c9560b239c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b1c2845984bc936995b9333ca3eca8c1c0532cfad89b9fb4af002a0a236da25"
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
