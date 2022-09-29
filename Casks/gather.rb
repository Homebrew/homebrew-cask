cask "gather" do
  arch arm: "-arm64"

  version "0.3.13"
  sha256 arm:   "0dd178e46cb51812d972a93e1e2e1f9ab9ee3b19a28da730a2fa94d85af53ba4",
         intel: "4190a12f6611cd9246f1906f134d4fca554fad5928a8d5ab911e7f558b5b459c"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
