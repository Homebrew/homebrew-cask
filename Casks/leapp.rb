cask "leapp" do
  arch arm: "-arm64"

  version "0.18.3"
  sha256 arm:   "4904d5e9019b160447fdf38d449a2efbdd736559f60591ee6673eea2f6cbadb5",
         intel: "f47777be8b96b9f63139106cadef6f40509df7c66cb3fba003b226871db61707"

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
