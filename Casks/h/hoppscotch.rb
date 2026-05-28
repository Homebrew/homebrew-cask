cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.5.0-0"
  sha256 arm:   "4672cca57903024f3d4f9a20362573f3330c74bb574e5020e67bbeb23c9ccc49",
         intel: "7418f012561cdfe4e901b868ffca7de3a56d103942543b1f09289d4142950bf5"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on :macos

  app "Hoppscotch.app"

  uninstall quit: "io.hoppscotch.desktop"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
