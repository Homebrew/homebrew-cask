cask "thorium" do
  arch arm: "-arm64"

  version "3.0.0"
  sha256 arm:   "14e476435f3a9d040adf57cb579b370029115da47e34d29af8766678f2f1b987",
         intel: "eab3b2d4f8e173e65fa7e3a1696c0def0d6a6844d4041f98932eff0a84343841"

  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version}/Thorium-#{version}#{arch}.dmg",
      verified: "github.com/edrlab/thorium-reader/"
  name "Thorium Reader"
  desc "Epub reader"
  homepage "https://www.edrlab.org/software/thorium-reader/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "alex313031-thorium"
  depends_on macos: ">= :catalina"

  app "Thorium.app"

  zap trash: [
    "~/Library/Application Support/EDRLab.ThoriumReader",
    "~/Library/Preferences/io.github.edrlab.thorium.plist",
  ]
end
