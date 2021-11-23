cask "progressive-downloader" do
  version "5.0"
  sha256 "30008b77fc12086d2c3e907a35bb01cb0a8b7d5064c1a0f7f84f2fee4e22ae5b"

  url "https://www.macpsd.net/update/#{version}/PSD.dmg"
  name "Progressive Downloader"
  desc "Download manager"
  homepage "https://www.macpsd.net/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/PSD\.dmg}i)
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
