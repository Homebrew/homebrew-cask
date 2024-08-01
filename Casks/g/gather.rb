cask "gather" do
  arch arm: "-arm64"

  version "1.11.11"
  sha256 arm:   "7e9723b728a8f97c8b108ca2e32e7519679ba399f324f6ec4a77d355b3e1d4b2",
         intel: "0a65406d42cd052e733f219f0928c1d0baa6611e28b661df6686e544b028aae8"

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
