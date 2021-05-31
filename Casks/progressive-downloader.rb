cask "progressive-downloader" do
  version "4.9"
  sha256 "fd9a33e707cd118d061ebfd9f151674dd282d4d65af7eed1843cd85a076039b9"

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
