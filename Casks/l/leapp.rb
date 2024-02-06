cask "leapp" do
  arch arm: "-arm64"

  version "0.24.5"
  sha256 arm:   "63bac3f3e7f4963f6a7e5b3b3e8e02897fe89166d7dde9815f753f602678ffcc",
         intel: "af65f4dfadd0af0e93e858b8c3c744b4987028abf750a097e21455c935a5a203"

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
