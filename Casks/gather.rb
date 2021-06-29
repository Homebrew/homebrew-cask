cask "gather" do
  version "0.1.0"
  sha256 "4ce518efdbc7355113745bd439e3fb04b573eb3eb25f68c3aa3f3165dc4728f5"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
