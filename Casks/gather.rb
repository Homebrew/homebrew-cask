cask "gather" do
  arch arm: "-arm64"

  version "0.6.1"
  sha256 arm:   "c00ca22d054907270adaba5871f4a9ce231d90ec10f5c4d650b0c69e6e8abaac",
         intel: "02963d344d5121500ca2e37792cb0501435e8fe148f4cdc8441d1585a588da0b"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
