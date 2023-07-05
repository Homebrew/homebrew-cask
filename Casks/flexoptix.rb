cask "flexoptix" do
  version "5.13.4"
  sha256 "bc1b9712c6a030a2b028fa259aba0673bc75463413d52096595c79ee48f6fd27"

  url "https://flexbox.reconfigure.me/download/electron/mac/x64/FLEXOPTIX%20App-#{version}.dmg",
      verified: "flexbox.reconfigure.me/"
  name "flexoptix"
  desc "Program your FLEXOPTIX Trancievers using a FLEXBOX"
  homepage "https://www.flexoptix.net/en/flexoptix-app/#"

  livecheck do
    url "https://flexbox.reconfigure.me/download/electron/mac/x64/current"
    strategy :header_match
  end

  app "FLEXOPTIX App.app"

  zap trash: [
    "~/Library/Application Support/flexoptix-app",
    "~/Library/Preferences/net.flexoptix.flexoptix.app.plist",
    "~/Library/Saved Application State/net.flexoptix.flexoptix.app.savedState",
  ]
end
