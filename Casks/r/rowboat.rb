cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "79c7f7dc53400e89883b1a25848f9ccaea74f0ecb6e3287e97b49d935e3e93d6",
         intel: "0a5ae6bd1230e0d5ce00cbc4861e0ba515d3ac31ba3deedb050ce0402ea75c64"

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
