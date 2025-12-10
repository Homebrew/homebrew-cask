cask "firefox@developer-edition" do
  version "147.0b2"

  language "ca" do
    sha256 "1d6c820372ccc65617a12b28fdf6f92b408132f080f5c14ba9ba63cd528465fc"
    "ca"
  end
  language "cs" do
    sha256 "c31d374ce47e31598cab93b784ce163bc34b17a4bfe4773d49e68d73447f9b73"
    "cs"
  end
  language "de" do
    sha256 "c2c03057b8b407a134c7be79b17cfc5a01b68760aedba89febd8fef2d3d2b96e"
    "de"
  end
  language "en-CA" do
    sha256 "5c5257658c940f0c741cd3c39221817a6410786374c185c81010e22889227105"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0ee242d38a0aa2b4c910a3bf17d07078971d1050def295e4e4ee6a6634f30bbc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7460d63bbbbaa278be900ed27473859d012bfa2bca6e9ca2e69d09efa7352b8e"
    "en-US"
  end
  language "es" do
    sha256 "59b352c83eea869517395ce64566b3d3542999b111d7def66ef6050dde5bbd6f"
    "es-ES"
  end
  language "fr" do
    sha256 "6b50e0e9b3b32a968a8ad4825c81c4c315fc06013655eecf7ac02e7215c2599d"
    "fr"
  end
  language "it" do
    sha256 "70c567bb4d21b5f936f49615341f723b5fa9e89daee759ffd709c63a0eae2897"
    "it"
  end
  language "ja" do
    sha256 "485d60f010d106b8dca383d26bb6ca286d49b089447ed55f828aaa056b50e145"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f9b07e2f18244b3ea658bcd199badda9b8c25308711854c25592022a6cc87a43"
    "ko"
  end
  language "nl" do
    sha256 "33e70983c13e26298ec4c37fb6b605577892dd4df82902e449a73f8a53f46d19"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c696dd335b93ff79d207d2dede25c71a22cd92b50fa4c7b3fb266df213a4cdb"
    "pt-BR"
  end
  language "ru" do
    sha256 "2720b79f2489bb4dd95f27c85e6bdc244fc6b3c38ee5c5280bad99c9835416b3"
    "ru"
  end
  language "uk" do
    sha256 "a044700f9d139346436795fb6c0a9716c87dc40ec29d909564cadbefddd35c78"
    "uk"
  end
  language "zh-TW" do
    sha256 "393b2c958c5ba7fe75f574df8af3a202cf6a592f098abab52eea62e6119e5af5"
    "zh-TW"
  end
  language "zh" do
    sha256 "fc738125d2eb29e10fc604e43e65f79f25e8baaf297020bc9e10faee6496a2d4"
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
