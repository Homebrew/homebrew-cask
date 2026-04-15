cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "30e2f2a25e34af66d7ed54aeb562fe2bd44b258706da4512996b9c21507f0601",
         intel: "b33ca50211e848be36643fb09c6a8599574195f27300634ab364ed10ed6ba654"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
