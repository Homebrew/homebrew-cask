cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.3.0-0"
  sha256 arm:   "9df5e4e8de1c569f4d084fe4299b15784210fb362cb30f1794142070a3072760",
         intel: "7a69f08e604f2ff78a0153e6827a432bf37d862c137a70826b5db77c97d72c4e"

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
