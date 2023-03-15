cask "gather" do
  arch arm: "-arm64"

  version "0.5.14"
  sha256 arm:   "23c2a3cc754928cf02ddcb79068e1006f34c66147b0fedcacc54b081a07e3326",
         intel: "9ec0cea9a7e2af2de3226303c425c8e5fa3f4f72d3eddd35bf0275cc0eaed3b2"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases/"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Gather.app"

  zap trash: [
    "~/Library/Application Support/Gather",
    "~/Library/Logs/Gather",
    "~/Library/Preferences/com.gather.Gather.plist",
    "~/Library/Saved Application State/com.gather.Gather.savedState",
  ]
end
