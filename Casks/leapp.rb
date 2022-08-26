cask "leapp" do
  arch arm: "-arm64"

  version "0.14.2"
  sha256 arm:   "25193b6b4c091ae9100502c1fe63067d4bbc95eb1194cd24fa058d41ad474aa2",
         intel: "3892df529f8ca9c237496510bea17a583959e504cf04e69c1f6fd48e29cfe6b5"

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
