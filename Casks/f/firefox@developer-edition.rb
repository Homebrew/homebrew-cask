cask "firefox@developer-edition" do
  version "146.0b5"

  language "ca" do
    sha256 "7560d73079accc7c31cea482948dfcb5f97fcaadb79a13e0e35d569fc4bdbc18"
    "ca"
  end
  language "cs" do
    sha256 "bd0ec6ab8e3d6884c0c5042740f89495fcbbb36fa6d2f706dc029309e6085ce3"
    "cs"
  end
  language "de" do
    sha256 "07b9053b36a9808c1b8c11311ebd0760ea55bec4e013bf1e8eeaf2dafb5a78b3"
    "de"
  end
  language "en-CA" do
    sha256 "52e4deaddab283e11245b5bff528273e71d84ebeb5e0756487f8456ae3be00ea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "142dd6befba3f06b2d51e1a55b7689475e48da10a399e7cd3641f15befb56a1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0da45e2f820db6cd649ad83218b2753cf90b099a4978ccd726f4b0fcfb339eee"
    "en-US"
  end
  language "es" do
    sha256 "4faca8368e636c886f3a6d3dc0e4c1babf17fc9d7c4c5d2b292bd19b760773ce"
    "es-ES"
  end
  language "fr" do
    sha256 "5da1b1fbf815dd336d57ad7617b0eb6fdff0b526afeb5c6a41d1f00e6acdcd34"
    "fr"
  end
  language "it" do
    sha256 "9244555d3c4881fd0c0b342c5c5a294f4b4a715c30972f2c767b9a1e70533c7f"
    "it"
  end
  language "ja" do
    sha256 "121dd492c5a1fab7b1196e742f66ca39fb3f07c5fa5f6e6fc3de46fc7067f401"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "10b3c18a455137d9aaab7d6a04e906ee4526db78a39fc2aa699bba34005d35cc"
    "ko"
  end
  language "nl" do
    sha256 "ccc10658d7c7874c0e2c5f9ed7d9fe03d1e14a7366cd3b753436a5be55ec8874"
    "nl"
  end
  language "pt-BR" do
    sha256 "f09c12eb924a8771653497ed8ae7e0ee5712184830e875492a270a22b1f3d1db"
    "pt-BR"
  end
  language "ru" do
    sha256 "505339ccfd36f5850eecd50ca9d489b2c5133d6aaf0591135cb79a109a291b08"
    "ru"
  end
  language "uk" do
    sha256 "4326dd1bc82d12164d48fe8e23131d5133d6294e6668a962c0b54cc2f0a75a5c"
    "uk"
  end
  language "zh-TW" do
    sha256 "3b869337818ddc20c1a9f4c7bebce09e8c0d230cc8a2d0983955470ba74960a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "448b0eb5f38f8b0403ad26dc468dc121cadaebe6f1d0e6c313f4b3dfdbccfdc0"
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
