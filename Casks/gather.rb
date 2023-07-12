cask "gather" do
  arch arm: "-arm64"

  version "0.9.0"
  sha256 arm:   "f994ee35371120758c7381c89e12eaf289e15232dad5ee7a2e9404fe4fffdc93",
         intel: "d0082d7e6f16063ee052c2b59725fbcb60962190b90235b38bad55dede6ed961"

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
