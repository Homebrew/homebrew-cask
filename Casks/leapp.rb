cask "leapp" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "0.12.0"

  if Hardware::CPU.intel?
    sha256 "53c88bdc7a015067408ba5438f4c3565601f9ae3341cab9800dd69806a245c7d"
  else
    sha256 "e98f7590172db95a9d5c7a6ac0eb4c12adfbce588036b5e8d0995aca3db16b6d"
  end

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
