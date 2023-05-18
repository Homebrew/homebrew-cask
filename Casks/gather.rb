cask "gather" do
  arch arm: "-arm64"

  version "0.7.4"
  sha256 arm:   "c75c7f0deb4748f24881038ee32856a82ca3e47e5aac25e73273646cacf48d0b",
         intel: "2bc50143dcee4b761639130a96e10cbabd9db5498dbabeac4ee140eb35d8905a"

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
