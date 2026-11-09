cask "progressive-downloader" do
  version "10.0.1"
  sha256 "b856d1515ca2876a4a899d73a93c6349c829bf5af507cd3d80ab0ccdef80f305"

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
