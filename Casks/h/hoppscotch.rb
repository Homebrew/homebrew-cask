cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "23.12.0-2"
  sha256 arm:   "5b9fd6e1695730768075d9d82b209b3a89bfcc7471f6f521d44df79ca0133207",
         intel: "6bd25829edb7131d04f51888b8731b645ed1f23edea6754dc7f0ab6a8d022aaf"

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
