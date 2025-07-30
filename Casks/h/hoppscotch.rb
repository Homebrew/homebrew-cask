cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.7.0-0"
  sha256 arm:   "a0cfc6a65ed9f2d9603ecba341cd1152537c6a75a88907e0f9b4b183ea0ad801",
         intel: "c85ccc32926906531c57534ca86d8bf17392c82d9c4f8f96319c1da6160f145e"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
