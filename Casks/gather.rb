cask "gather" do
  arch arm: "-arm64"

  version "0.3.9"
  sha256 arm:   "66d7507146fd2272eaa249a51206b12887ca27d5b163e20aeebfa324a877b997",
         intel: "ef196e8f48326a7d92313875c4c8947c57a3984b36aa2079d0d724ff796115b2"

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
