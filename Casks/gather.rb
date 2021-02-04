cask "gather" do
  version "0.0.6"
  sha256 "d5de3b7b8f36d58c323052b88de549187a324b9486f8aed5269f71a269e83460"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Gather-(\d+(?:\.\d+)*)-mac\.zip}i)
  end

  app "Gather.app"
end
