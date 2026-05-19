cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "033ca77a234274a0ee2484fc9a3fe015a93c1ca2bb657ece82fb3fa34456d434",
         intel: "9cadae54b956900cabdc2e676f3c9dabd2caac37aa801f2559a5bc800867efd1"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
