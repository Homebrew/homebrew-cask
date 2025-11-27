cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.11.0-0"
  sha256 arm:   "b60c5c5a31c4378389a09c83d8861b0370e8da3f43242c38d426c498f1a18566",
         intel: "bde945b40efaac01c9e6371513759bed4ea54764fdbfac314165f3fd9ae89661"

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
