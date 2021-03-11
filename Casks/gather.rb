cask "gather" do
  version "0.0.7"
  sha256 "090abffebb54eff2a267d5d355c30fcc9e75ebf955d92cb87e8f568438af7dbc"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
