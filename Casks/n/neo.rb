cask "neo" do
  arch arm: "arm64"

  version "1.6.1"
  sha256 arm:   "1240d89948e4cc03650b0dd0261ea5b3f64221132cf86a102b343f6355e1293b",
         intel: "a0d651cb7f2ba65d8754af99e920b52417764f93b5cd74bdcb6f8da1631d6499"

  url "https://github.com/hughhowey/neo/releases/download/v#{version}/NEO-#{version}-#{arch}.dmg"
  name "NEO"
  desc "Distraction-free word processor for book authors"
  homepage "https://github.com/hughhowey/neo"

  livecheck do
    url "https://github.com/hughhowey/neo/releases/latest/download/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  depends_on macos: :monterey

  app "NEO.app"

  zap trash: "~/Library/Application Support/neo"
end
