cask "cyclop" do
  version "0.8.0"
  sha256 "a18cbe42326c28e2ded61a3c91d46b1227d2c76973a1976d3d49c1616558666d"

  url "https://github.com/akalikbergenov/cyclop/releases/download/v#{version}/Cyclop-#{version}.dmg"
  name "Cyclop"
  desc "Panel in the MacBook notch: player, file shelf, clipboard, calendar"
  homepage "https://github.com/akalikbergenov/cyclop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Cyclop.app"

  zap trash: [
    "~/Library/Application Support/Cyclop",
    "~/Library/Preferences/com.cyclop.app.plist",
  ]
end
