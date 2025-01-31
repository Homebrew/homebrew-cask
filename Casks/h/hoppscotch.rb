cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.1.0-0"
  sha256 arm:   "fe01bf380727f49a8729d9bcaf582b834bee0f5d7ce32a3845ab110191c10856",
         intel: "8ba79223747fb8136fd6fc128b16c34bb15e3f81c0b91d5c421ae3e41657872d"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
