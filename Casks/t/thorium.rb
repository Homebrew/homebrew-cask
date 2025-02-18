cask "thorium" do
  arch arm: "-arm64"

  version "3.1.0"
  sha256 arm:   "4f080ea8da8d0e8e976be8b7ab9cf1bae449598c24a476b445c80fd653cd7505",
         intel: "b718cd726188f7ec7b215e4c12297a992e5471b87211bce66a7c5493641aedac"

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
