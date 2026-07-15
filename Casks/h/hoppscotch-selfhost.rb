cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.6.1-0"
  sha256 arm:   "f8b8786f0a2ce1c25bc03b924c9876fc3682c3611932c3577cfb5beef44733f8",
         intel: "4f1006ca494c08fce7df733f2e9da6cb7464793ed4086e36ecd1ea19b6cf45a0"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"
  depends_on :macos

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
