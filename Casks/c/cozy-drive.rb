cask "cozy-drive" do
  arch arm: "-arm64"

  version "3.43.1"
  sha256 arm:   "dea105d92a5d1316006499c78a92592b51fe16d5656ce01e77b7d0f6688146c8",
         intel: "f9fef95f8a6a0e1f40038d11b1e52d2467aac107ab8d735e3f45ca8e6ccef49a"

  url "https://github.com/cozy-labs/cozy-desktop/releases/download/v#{version}/Cozy-Drive-#{version}#{arch}.dmg",
      verified: "github.com/cozy-labs/cozy-desktop/"
  name "Cozy Drive"
  desc "File synchronisation for Cozy Cloud"
  homepage "https://cozy.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Cozy Drive.app"

  zap trash: [
    "~/.cozy-desktop",
    "~/Library/Application Support/Cozy Drive",
    "~/Library/Preferences/io.cozy.desktop.plist",
    "~/Library/Saved Application State/io.cozy.desktop.savedState",
  ]
end
