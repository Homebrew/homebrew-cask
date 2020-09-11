cask "progressive-downloader" do
  version "4.7"
  sha256 "9e6cefef9e01b7e98cb2d6419a571773b06bc142217cc9f97e1e572bcc79efe6"

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  appcast "https://www.macpsd.net/"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  depends_on macos: ">= :yosemite"

  app "Progressive Downloader.app"

  zap trash: [
    "~/Library/Application Support/Progressive Downloader Data",
    "~/Library/Caches/com.PS.Downloader",
    "~/Library/Caches/com.PS.PSD",
    "~/Library/Preferences/com.PS.PSD.plist",
  ]
end
