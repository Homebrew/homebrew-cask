cask "progressive-downloader" do
  version "4.8"
  sha256 "598ea27da568a4f89085f186d6f6f8df3a1bf8c949906ab3908a6f90b526217a"

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/PSD\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "Progressive Downloader.app"

  zap trash: [
    "~/Library/Application Support/Progressive Downloader Data",
    "~/Library/Caches/com.PS.Downloader",
    "~/Library/Caches/com.PS.PSD",
    "~/Library/Preferences/com.PS.PSD.plist",
  ]
end
