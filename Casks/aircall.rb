cask "aircall" do
  version "2.27.3"
  sha256 "f8973ea6db0d078d04e55898cf29a588f2ffeb8b842470d8e5eb6b4fe3e853e1"

  url "https://download-electron.aircall.io/Aircall-#{version}.zip"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  livecheck do
    url "https://electron.aircall.io/download/osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Aircall.app"

  zap trash: [
    "~/Library/Application Support/Aircall",
    "~/Library/Caches/io.aircall.phone",
    "~/Library/Caches/io.aircall.phone.ShipIt",
    "~/Library/Preferences/io.aircall.phone.plist",
  ]
end
