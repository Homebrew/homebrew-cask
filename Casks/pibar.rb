cask "pibar" do
  version "1.1"
  sha256 "a17007f6960f16017da007b1106b7ef1453e11bb52fa6e64a490664f05376f84"

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
