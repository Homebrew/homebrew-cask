cask "gather" do
  version "0.2.0"
  sha256 "32cbb0f4806a1f6ed8d6aebd87970e14fde332143107ca8a3eab5a2b60e4e5ed"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
