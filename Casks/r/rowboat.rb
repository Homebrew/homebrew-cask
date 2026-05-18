cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "652d4c9ca47ff4270a537893719da7ef111ba6f959e1a00a2d1384e8f7343cd7",
         intel: "54bfd18a399a0d3b463d7fc0b3ca816d614b29191f263029ca6b697ba63b1b37"

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
