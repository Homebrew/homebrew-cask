cask "openrocket" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "22.02"
  sha256 arm:   "bd1ba7780ffbb03413b5dda37dae1304d202c38b1b0336b93133037410cf66e6",
         intel: "54828d7cadde3ef97d7899b03befca2fe56fcad9b4868d28ece9afecff7d38e4"

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
