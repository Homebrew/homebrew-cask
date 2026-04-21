cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "87bb592188df9e8d9573188802e866612af92b35f39b553bbdf38e748417d8cb",
         intel: "442b41014a06edfa51c43d053126d458fcfd57f692eef2fcdfa02b082205fdb2"

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
