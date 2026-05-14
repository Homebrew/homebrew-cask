cask "hoppscotch-selfhost" do
  arch arm: "aarch64", intel: "x64"

  version "26.4.1-0"
  sha256 arm:   "2b6e635deb244524b8ed5e96849ea87ddf299398ddb457247bad4947e5eac0ec",
         intel: "88832157c01dc1002dc3bcab7c1d438f57bbf1107ecd5c5edb33dc6ad0b9e4d4"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_SelfHost_mac_#{arch}.dmg",
      verified: "github.com/hoppscotch/releases/"
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
