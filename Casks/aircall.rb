cask "aircall" do
  version "2.26.4"
  sha256 "4a24287dd73edfad865ceefb38c0a639d34a68df8bb754932bb8521e1a510a7e"

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
