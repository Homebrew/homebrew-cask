cask "leapp" do
  arch arm: "-arm64"

  version "0.17.4"
  sha256 arm:   "ebfe8e7b5b8b7c0119e64f4a670a69041595e3f894743c3b275fc5ae3ce67b1e",
         intel: "0c32ee91713b14a05cf6848267d27e3a97d7088a50f15ca11bd8c85865e42818"

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
