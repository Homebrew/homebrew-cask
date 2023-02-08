cask "progressive-downloader" do
  version "5.6"
  sha256 "feda0ec32266e42dabe167f23af1fc54126a6fe1a1e64b879a9738a8f664510e"

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/PSD\.dmg}i)
  end

  app "Progressive Downloader.app"

  zap trash: [
    "~/Library/Application Support/Progressive Downloader Data",
    "~/Library/Caches/com.PS.Downloader",
    "~/Library/Caches/com.PS.PSD",
    "~/Library/Preferences/com.PS.PSD.plist",
  ]
end
