cask "leapp" do
  arch arm: "-arm64"

  version "0.18.4"
  sha256 arm:   "b556c00007bc786169966d30cd592211bcdf6a3e7001d19d24cabc93d9c06870",
         intel: "9d24e5fb0b926e427255e1b18df1e1f0409938cd0d8539b5fffedfcbc9f086fb"

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
