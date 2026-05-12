cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.0-0"
  sha256 arm:   "84148b0340b92dff45ce92464e7da3f6464429bde4cffcf7e0eeb9a11418c265",
         intel: "bede1d95ef1276dc012add066eccaef33e6f1c4d17c8a8c09e95d0715b1ee461"

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
