cask "gather" do
  arch arm: "-arm64"

  version "1.9.0"
  sha256 arm:   "60285f6f922770483c7a0e8afee6adc7482292746bcc39f43b1773a9da94d554",
         intel: "6aea419416a9c9d9ccc601bb8ee7a67a5e030e05b4b9f691d24e5228c53bea89"

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
