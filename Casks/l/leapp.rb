cask "leapp" do
  arch arm: "-arm64"

  version "0.24.2"
  sha256 arm:   "8e81c1524a56a0e775a412bfd254d05cd7ecb51f9d32b8826e73fb5d1c34ff5d",
         intel: "7c7abccdaa12e163f5706a14b3138d65035a032777a0f5dece7750faa7262bd5"

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
