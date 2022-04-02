cask "gather" do
  version "0.2.2"
  sha256 "5ba41eacaf4f27bba26e23473dd3a2bd400a326fe026c25fde05e6a5bc36ce77"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
