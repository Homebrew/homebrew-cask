cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.12.1-0"
  sha256 arm:   "80f9b0caca6e4f5a9f813bbbeeff7861ea7eb94df2441f08b063a40d1b2b50d5",
         intel: "ec1bd6f4d7b5034f7a56e5a27658e36641def2e28db70dc8e981f19fc0c39905"

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
