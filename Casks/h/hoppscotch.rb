cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.8.1-0"
  sha256 arm:   "25fd294027237118ecdf08112c6e5d7813b8772cfdecc9e47e2cb8e61a965dd5",
         intel: "a8a46095851db9ef1ac4d7093244a83684788c689b4e3f4a46a4647c5789d558"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
