cask "leapp" do
  arch arm: "-arm64"

  version "0.18.6"
  sha256 arm:   "d949e11b5984557044a1bbfdbf22d726a9b0bd868320e6a385f34c54909fa9e2",
         intel: "0dead5b3d81b0dfe72bb3274afcde1f673e74a30f36b8b40efe419ecf3181bf0"

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
