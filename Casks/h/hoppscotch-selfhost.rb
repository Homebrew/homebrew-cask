cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.0-0"
  sha256 arm:   "0bda11226051dde73445dfcc117a20f46dc7d4cf675d0203fdc6d3c19590ba90",
         intel: "c07bda564b34d3d5cf468a1c18c66b4e2f3c998ddcd653042da102b034191ac2"

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
