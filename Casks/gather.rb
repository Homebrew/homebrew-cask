cask "gather" do
  arch arm: "-arm64"

  version "0.5.21"
  sha256 arm:   "ab9dbf5af61e91a71f01dd61c33057abd3f998ebb481a79cf0c5ee278437feaf",
         intel: "b3073575dc595f2ceba6457dac6dca88a532b2c2df5806cbc3d593df5fac4899"

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
