cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.10.0-0"
  sha256 arm:   "a4b7648f2dd60398acbdb0a18314249c22848b5f4564f55b96f2519cd617873d",
         intel: "f8c5be99e41dd5b0d333f551c956a922fe4080f992d435078794cea3031dbba7"

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
