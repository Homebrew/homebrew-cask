cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.0-1"
  sha256 arm:   "a9df2badbda55e945c1a115395a0c35c7b9d9e0da090a996a34e84f4acc32c3d",
         intel: "8a76d24294d5c28f54728da62137a015e443006feed1992eb178451f0fafc48e"

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
