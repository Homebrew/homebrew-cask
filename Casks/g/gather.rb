cask "gather" do
  arch arm: "-arm64"

  version "0.14.3"
  sha256 arm:   "4b555300891d5186fc98ab81741658eca86f45b286b530de9d1570fecbf5df21",
         intel: "5b1a15cac336cd19ef3fc7f284b59010e72aee7f67fb41ac7ac832b74c83eea4"

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
