cask "pibar" do
  version "1.1.2"
  sha256 "61808096da94b8e7f857e48b0bd499f28ad9f3822ba0d0fed29be9d6b1163949"

  url "https://amiantos.s3.amazonaws.com/PiBar-#{version}.zip",
      verified: "amiantos.s3.amazonaws.com/"
  name "PiBar"
  desc "Pi-hole(s) management in the menu bar"
  homepage "https://github.com/amiantos/pibar"

  app "PiBar.app"

  zap trash: [
    "~/Library/Application Scripts/net.amiantos.PiBar",
    "~/Library/Containers/net.amiantos.PiBar",
  ]
end
