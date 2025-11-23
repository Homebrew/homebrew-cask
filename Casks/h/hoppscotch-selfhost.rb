cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.10.1-0"
  sha256 arm:   "85671a4f7cad4249a1cc108b90397b4a641fa81072f67bbc82281aaec714f2ca",
         intel: "c0c8af5cde062c3720aead2cfed4b5510a6d6ff68221f66ca2328562d9026a3e"

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
