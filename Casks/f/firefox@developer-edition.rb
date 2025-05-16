cask "firefox@developer-edition" do
  version "139.0b9"

  language "ca" do
    sha256 "de6c76db8caa1c639e98c39bf60d4348e49a049c528b70d64124589442707c75"
    "ca"
  end
  language "cs" do
    sha256 "d243ad737161a21a4332fca0a06af36201b3c18cba747885617201d68af53fdc"
    "cs"
  end
  language "de" do
    sha256 "1666ef42fae74d0349ed4a49f986c29f1719b444bff5dac4b54db7f092c6b31d"
    "de"
  end
  language "en-CA" do
    sha256 "55398bd55ecd9511e7c58e72a5b030639eb3cc465cc42c1ff908ca4570b7c4c3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2f3bc98fd14ba4b6574cd9b2a1f5aba2352c88bc7d9c15670cd600ad8134c70d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8e8dea735d702aee07548baa6fbb1650e5a57ec19fc87d7e3d7c284aa5069f7"
    "en-US"
  end
  language "es" do
    sha256 "ea19990835b916fd6e993f195879bda47f75fd4d88e9f3d274ad9800ff4c5578"
    "es-ES"
  end
  language "fr" do
    sha256 "0d632c20b14c7aa466d5a81817dba6580da8dbd231898716aa0dc5e4dda14ce4"
    "fr"
  end
  language "it" do
    sha256 "881bdd333b1776cc2db3bfb2485b016ba4fc40b73452e9acfb40edb38ee617bf"
    "it"
  end
  language "ja" do
    sha256 "a9d4926ace01658e0f6815ff9c3c773568dad0d6ede2c8d799502d44760758ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "70c5c6e5903127ad1f549a1b15a57486755c8b902d5b8cb1d2c30a7f97a66385"
    "ko"
  end
  language "nl" do
    sha256 "a74360018f94c88c651396133ff628f006d8d2522726d3b5a203f6f9d40b9812"
    "nl"
  end
  language "pt-BR" do
    sha256 "3b2f50c940bf0eb8fc9cbfc2623f351d317564a4c43b0634306e94a22ca22d9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "8604f3d97276918521c43ef5b7a26fc35f3de53e1ebf9462949f1cf7b553de2d"
    "ru"
  end
  language "uk" do
    sha256 "8a332d547355d0e47979b7c52de4507f9755fec7b15738f8e5d7ee4d9ce1c8bb"
    "uk"
  end
  language "zh-TW" do
    sha256 "81c6813e819f9a051c0a9b62269b2e332e9b37974a799afe05af75a4a8cb723c"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b8a89bbc7a969f0c39a9de3e2cbbc4d5effd70efe747c607b231939d60acc9c"
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
