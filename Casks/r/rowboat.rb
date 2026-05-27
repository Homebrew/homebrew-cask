cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "1455db3fb06a7bbbf8bee99e97e5e9d0e51aa63a2784e61719c294fa0b952fb8",
         intel: "e442e14ac8cc81dbad9134d1b67e519a9164242f040014703e5cbcbdfcee8e82"

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
