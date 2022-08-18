cask "leapp" do
  arch arm: "-arm64"

  version "0.14.0"

  on_intel do
    sha256 "8cc24364563f3c6f73dead091708fccc9ca74b17f0fc048e007880ad495aaba3"
  end
  on_arm do
    sha256 "2143fd78b2b2d9f4c0f068545d8931de24fa1a2e43bd0849b21c093ee6d8fe3f"
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
