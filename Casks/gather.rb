cask "gather" do
  arch arm: "-arm64"

  version "0.3.6"
  sha256 arm:   "170743882eb60a66a6cd7fddea3fd106cd86ca9b35bd373175f75bf1e88386df",
         intel: "8c4b6c82ceb7797db4e1203867d4268b6c093fe69bd5f068a95b7fb5a8b5eff6"

  url "https://github.com/gathertown/gather-town-desktop-releases/releases/download/v#{version}/Gather-#{version}#{arch}-mac.zip",
      verified: "github.com/gathertown/gather-town-desktop-releases"
  name "Gather Town"
  desc "Virtual video-calling space"
  homepage "https://gather.town/"

  app "Gather.app"

  zap trash: "~/Library/Application Support/Gather"
end
