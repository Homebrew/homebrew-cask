cask "progressive-downloader" do
  version "4.7.1"
  sha256 "55844fb90760856c2435a79d7e64b1c4edc349078e127375a3d03efe5f79b12a"

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
