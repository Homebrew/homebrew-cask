cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.11.2-0"
  sha256 arm:   "c0c86429257202c14b2188ac8f18f049557cf427e9312305038adc27059b6711",
         intel: "b5cfcfd5b73583785b6e416caf567e4dfb421bd224de56f31b91c257e22220de"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
