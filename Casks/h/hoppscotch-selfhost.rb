cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.9.0-0"
  sha256 arm:   "a769d4e48d6df5c3248f0a910c7d69bb3f6445b0f28ff26e3b7972fa4f698a90",
         intel: "0e9308765e9c1d0062d5eb27905ab5557a81fca8163536abdd93a0e75cfc179c"

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
