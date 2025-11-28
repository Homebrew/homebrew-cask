cask "progressive-downloader" do
  version "8.5.1"
  sha256 "e98d914c8cb2d875e811afe7fe976e2b63791459491dc5eb37432dc46233258d"

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/PSD[^"' >]*?\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Progressive Downloader.app"

  zap trash: [
    "~/Library/Application Support/Progressive Downloader Data",
    "~/Library/Caches/com.PS.Downloader",
    "~/Library/Caches/com.PS.PSD",
    "~/Library/Preferences/com.PS.PSD.plist",
  ]
end
