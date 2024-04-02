cask "progressive-downloader" do
  version "6.5"
  sha256 "97257db18aa39ce40779a278e95953930ebddb1c82d1d37b61efea210556b1f1"

  url "https://www.macpsd.net/update/#{version}/PSD_#{version.dots_to_underscores}.dmg"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/PSD[^"' >]*?\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Progressive Downloader.app"

  zap trash: [
    "~/Library/Application Support/Progressive Downloader Data",
    "~/Library/Caches/com.PS.Downloader",
    "~/Library/Caches/com.PS.PSD",
    "~/Library/Preferences/com.PS.PSD.plist",
  ]
end
