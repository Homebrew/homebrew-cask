cask "progressive-downloader" do
  version "10.1"
  sha256 "f55c16477718a3cdd9cd5074434362fed69d66347b30e4bdcf7854514d5193f7"

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/PSD[^"' >]*?\.dmg}i)
  end

  depends_on macos: :ventura

  app "Progressive Downloader.app"

  zap trash: [
    "~/Library/Application Support/Progressive Downloader Data",
    "~/Library/Caches/com.PS.Downloader",
    "~/Library/Caches/com.PS.PSD",
    "~/Library/HTTPStorages/com.PS.PSD",
    "~/Library/Preferences/com.PS.PSD.plist",
  ]
end
