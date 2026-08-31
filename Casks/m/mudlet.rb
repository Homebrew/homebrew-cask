cask "mudlet" do
  arch arm: "arm64", intel: "x86_64"

  version "5.0.0"
  sha256 arm:   "4b2750f9ac2bfe4b5124167b9ae26498dc3c4156c76bbc877e4f9986109dcf74",
         intel: "9ed4ea62c188861fa36cff0523487300d0ef3c2707df3de362e23d3d7b90cb3e"

  url "https://github.com/Mudlet/Mudlet/releases/download/Mudlet-#{version}/Mudlet-#{version}-#{arch}.dmg"
  name "Mudlet"
  desc "Multi-User Dungeon client"
  homepage "https://www.mudlet.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "mudlet.app"

  zap trash: [
    "~/Library/Preferences/org.mudlet.mudlet.plist",
    "~/Library/Saved Application State/org.mudlet.mudlet.savedState",
    "~/mudlet-data",
  ]
end
