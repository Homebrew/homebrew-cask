cask "gather" do
  version "0.0.8"
  sha256 "a02d9494ff95c51ad02d68d6309be9892e6a1f12d098871a68688c40fe6ffdbf"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
