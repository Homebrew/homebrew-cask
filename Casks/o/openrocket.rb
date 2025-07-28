cask "openrocket" do
  arch arm: "AppleSilicon", intel: "Intel"

  version "24.12"
  sha256 arm:   "4f82e5a6b008232d6164d5cdca6c94e41c2b20a5d9ccec6d7891d19c99eb2357",
         intel: "f4aacf2e821b23dcd2dfabe46fc5c2a23ad956f16c216d96b5ee026274f82bcc"

  url "https://github.com/openrocket/openrocket/releases/download/release-#{version}/OpenRocket-#{version}-installer-macOS-#{arch}.dmg",
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
