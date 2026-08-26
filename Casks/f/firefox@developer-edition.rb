cask "firefox@developer-edition" do
  version "155.0b5"

  language "ca" do
    sha256 "8bafadff87995448c1725de4a8ac9fb59988c019d3de8006d44c5c2ddf10c2a8"
    "ca"
  end
  language "cs" do
    sha256 "62fe01342b78b0be873d371428a435841e614a1e912843f60f43462a5206e0f2"
    "cs"
  end
  language "de" do
    sha256 "d62cc6aa470e308c7499281e33bb205eed88d1a7ed7e5aa04661201a6a9fb751"
    "de"
  end
  language "en-CA" do
    sha256 "e3b6d422145b292fe36e113002ce498c161be32c4f28ed553fbc66a8327ecb02"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d050362a0f3dd20fb1abe9c650f55e4e51353491fca2f4711d787c1ed25295a2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a4cf174e96a6508f89e278b25e3a56b45c2936298094e3288857a7bfb4d279d7"
    "en-US"
  end
  language "es" do
    sha256 "932e81eafd9cab35060b0f0753d46be1ef8f12a38f205fb66fcb1cd852a9d3a3"
    "es-ES"
  end
  language "fr" do
    sha256 "6f8c8a98b087e411d0e39ec7e00cac31517af575370bc0d457c3a49c13a4d566"
    "fr"
  end
  language "it" do
    sha256 "ffbdf27e51a5f702c92c1aa9101be7ecb04d12b5bfb81d1cecc6325e199abad6"
    "it"
  end
  language "ja" do
    sha256 "f3970c165ca6c57bd7b74241ffc45b9cd783a02bd5304695f14567eb88e7427c"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cc33d409b868cb870c21a7b3aa245a8e7f7c29ca98305eeaaa1dc2c4b5657c77"
    "ko"
  end
  language "nl" do
    sha256 "b4d7159a2d7195067f6a39488a19eb78f555a2928130584646582df4c99acd9f"
    "nl"
  end
  language "pt-BR" do
    sha256 "6cc9ad4fba2bc8e0d9f1ab21e779245b354cc3ceeb6464f2090969daac9783ee"
    "pt-BR"
  end
  language "ru" do
    sha256 "33e96d510a6381283688089888335b025808a25e09cd65f81808fb4897945d30"
    "ru"
  end
  language "uk" do
    sha256 "cf19c463715e52d0cd959de0a296f05d3e18e842cec300c7868bc7a758891b93"
    "uk"
  end
  language "zh-TW" do
    sha256 "e19947f6c09761bfef5928744002f2ff98a3d3bf0b8549cc345a4e0f11897f4b"
    "zh-TW"
  end
  language "zh" do
    sha256 "18584fb480be09388ff6b9f0113bf35e67638ef04a929a46b4ef8c997eecc520"
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
