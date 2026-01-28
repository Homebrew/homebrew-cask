cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.1.0-0"
  sha256 arm:   "45e2e9f8ac58cd698b5a20adcbfb60abd04d0c5d224838284c70ba13131a476c",
         intel: "3110e02521cf438811c0a8fa8ce85665116afe8a5dd513d3d313e12816048db2"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
