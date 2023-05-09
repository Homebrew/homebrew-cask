cask "gather" do
  arch arm: "-arm64"

  version "0.7.1"
  sha256 arm:   "2b964ec2eabb1e9c58ff935c713f29f5cd32e413a4e099bde76b1e59456282c3",
         intel: "acfe15a8a992241a821001c1e2a6f0e6623736b9cde2e765f9a4e3d33c6bc2b2"

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
