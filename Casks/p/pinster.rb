cask "pinster" do
  version "1.2.2"
  sha256 "bf467b6cfb5535b11166f3d913ebe0806a2b215dd827fa3067dc38a402833d2d"

  url "https://github.com/nickustinov/pinster-macos/releases/download/v#{version}/Pinster-#{version}.dmg"
  name "Pinster"
  desc "Lightweight menu bar app for quick access to pinned websites"
  homepage "https://github.com/nickustinov/pinster-macos"

  depends_on macos: ">= :ventura"

  app "Pinster.app"

  zap trash: "~/Library/Preferences/com.pinster.app.plist"
end
