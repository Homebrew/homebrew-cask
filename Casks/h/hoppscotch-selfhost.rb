cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "25.7.1-0"
  sha256 arm:   "1d96349a44978b25eb62088a3ac35522943af5fe280eeae175da3f764ea61cf2",
         intel: "a3e798c8dd0fbefb986db3538ab4108026ce0db55581dd89214f814eecc88abe"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
  name "Hoppscotch SelfHost"
  desc "Desktop client for SelfHost version of the Hoppscotch API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch"
  depends_on macos: ">= :high_sierra"

  app "Hoppscotch.app"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
