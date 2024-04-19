cask "gather" do
  arch arm: "-arm64"

  version "1.5.2"
  sha256 arm:   "33cb944cbcf91fa5bca1b5cad72a1fd2072d807b801c523778280575ce514a7f",
         intel: "a44003d9a9269702248da2672b83a93a69386b99beb77408bb43673f831100e5"

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
