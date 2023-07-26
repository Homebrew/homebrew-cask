cask "gather" do
  arch arm: "-arm64"

  version "0.10.2"
  sha256 arm:   "d9406e6047f6ccf90f5820df9b7d12080fed3e6c72228b5940cfbf2980c1230d",
         intel: "3e46a8a6b60e40a09c5fc261106bdd98319dd70effd270bcc302bfdc11a682b2"

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
