cask "atlas-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.3.0"
  sha256 arm:   "97b1373fd8f833bb1bf41da4d05782e7079ad7d3c5a31b61b9910765fe83e0d5",
         intel: "4e5d2b415a9346ddef8d820302a36253a360c6c91e980cac6a4e8ee039e3d640"

  url "https://github.com/pacifio/atlas/releases/download/alpha-#{version}/Atlas_#{version}_#{arch}.dmg"
  name "Atlas"
  desc "Source control for coding agents"
  homepage "https://github.com/pacifio/atlas"

  livecheck do
    url :url
    regex(/^alpha[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Atlas.app"

  zap trash: [
    "~/.atlas",
    "~/Library/Application Support/dev.atlas.ide",
    "~/Library/Caches/dev.atlas.ide",
    "~/Library/HTTPStorages/dev.atlas.ide",
    "~/Library/Preferences/dev.atlas.ide.plist",
    "~/Library/Saved Application State/dev.atlas.ide.savedState",
    "~/Library/WebKit/dev.atlas.ide",
  ]
end
