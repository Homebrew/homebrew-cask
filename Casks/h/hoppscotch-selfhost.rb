cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.1.0-0"
  sha256 arm:   "7c3799b7ec7a2643b59833e41fc6e0881e2a05fa9f25043cef3b6542090857c2",
         intel: "07dec1585d55ad251ca4051db251bdb976f0e3fa03cf4fc1e091e8564cc8fba7"

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
