cask "leapp" do
  arch arm: "-arm64"

  version "0.14.1"

  on_intel do
    sha256 "e402ae5a82f9acff0522a9358ad13a411f51858709908ab2cf681748b9df42c0"
  end
  on_arm do
    sha256 "85bc3f78e32af9db69125f3568d9aea9f6cd735193f6664a54c0916bc49e8b46"
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
