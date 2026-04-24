cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "19ab08e330645319b87fb3ea211dedb3e17204c678c9998b6dfc4145df74829a",
         intel: "8b6188b9d21115ab1f7dc73a374faf6b53282dcca87870bcfb4c32be000f81ac"

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
