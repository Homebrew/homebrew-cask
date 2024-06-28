cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.6.0-1"
  sha256 arm:   "8bacff0d2b52bb7b2884beec9df7ec1f0053b4f69f627325da6ff714c02e86ec",
         intel: "01985130fd2d81b5ff955cb680d82677a587183075ebdd9e603f106d82f9abfb"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://github.com/hoppscotch/hoppscotch"

  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
