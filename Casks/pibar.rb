cask "pibar" do
  version "1.1.1"
  sha256 "4badcd4056f879e35cf749ce4e2a142a127fd198eec5ddcb15da63a2a0b3c64c"

  url "https://s3.amazonaws.com/amiantos/PiBar-#{version}.zip",
      verified: "s3.amazonaws.com/amiantos"
  appcast "https://github.com/amiantos/pibar/releases.atom"
  name "PiBar"
  desc "Pi-hole(s) management in the menu bar"
  homepage "https://github.com/amiantos/pibar"

  app "PiBar.app"

  zap trash: [
    "~/Library/Application Scripts/net.amiantos.PiBar",
    "~/Library/Containers/net.amiantos.PiBar",
  ]
end
