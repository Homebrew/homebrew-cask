cask "leapp" do
  arch arm: "-arm64"

  version "0.17.2"
  sha256 arm:   "9b5b09396ac207ff4dafaf65e569d593e4335ac78b939ba1e191c1039b23b1bf",
         intel: "1c4e80bb00d91042cc99b3be5fac6ee0456d509e93a0a977c4dbb2cf71f871b6"

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
