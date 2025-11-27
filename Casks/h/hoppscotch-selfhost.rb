cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.11.0-0"
  sha256 arm:   "cffcd2166cea3cf6b58564eebf838c91796e52d0431c9d0e91d36c324a5ca93d",
         intel: "6827ed9f6c28af6714588493591a9738739c5018983e0ba0117f6998384ae730"

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
