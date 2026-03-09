cask "iaito" do
  arch arm: "arm64", intel: "x64"

  version "6.1.0"
  sha256 arm:   "b6b6ca37ced30e23aea1c44de0a31e19d63f2759f085bdaa3dbab110e30a08f3",
         intel: "dc61bfc1531c2568ab9c08ece2e8e0cfa9e67edaec41d7a7ee26c39c38611a3f"

  url "https://github.com/radareorg/iaito/releases/download/#{version}/iaito_#{version}_#{arch}.dmg",
      verified: "github.com/radareorg/iaito/"
  name "iaito"
  desc "GUI for radare2"
  homepage "https://www.radare.org/n/iaito.html"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "iaito.app"

  zap trash: [
    "~/Library/Application Support/radareorg/iaito",
    "~/Library/Caches/radareorg/iaito",
    "~/Library/Preferences/org.radare.iaito.plist",
    "~/Library/Preferences/radareorg/iaito",
    "~/Library/Saved Application State/org.radare.iaito.savedState",
  ]
end
