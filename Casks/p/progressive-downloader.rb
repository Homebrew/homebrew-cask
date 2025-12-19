cask "progressive-downloader" do
  version "8.6"
  sha256 "f8a546960ddc196659c7ae64cb9e4469dcc6884b51728bcce37057cb189eade5"

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
