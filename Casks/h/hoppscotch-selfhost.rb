cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.8.1-0"
  sha256 arm:   "e91c3c57b15a019066a70213d7298cd81024a770289137effb3949a32340b5f8",
         intel: "578e4337a70da8525368e11b238c946e1a34cf040e8741f2535c6712337364e7"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg"
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
