cask "gather" do
  version "0.1.5"
  sha256 "977e08a4c0a5e4eafce42b2f959df2466df7bd036e558719a2ef261833a23d62"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
