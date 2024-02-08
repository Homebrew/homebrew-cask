cask "openrocket" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "23.09"
  sha256 arm:   "4eca72cf41e46e75414ef7eb8c5ca697a6b39a6907df7b149610458e8bf936e9",
         intel: "bb2ca248b34e847fe0b45135edb93362b25fc4cce457828b8f9245384864d397"

  url "https://github.com/openrocket/openrocket/releases/download/release-#{version}/OpenRocket-#{version}-macOS-#{arch}.dmg",
      verified: "github.com/openrocket/openrocket/"
  name "OpenRocket"
  desc "Model rocket simulator"
  homepage "https://www.openrocket.info/"

  livecheck do
    url :url
    regex(/v?(?:release)?[._-]?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "OpenRocket.app"

  zap trash: [
    "~/Library/Application Support/OpenRocket",
    "~/Library/Preferences/openrocket.favoritepresets.*",
  ]
end
