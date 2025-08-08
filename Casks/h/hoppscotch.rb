cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.7.1-0"
  sha256 arm:   "42bef1bf75f29de03d473bceeccaad6e5045fa83b86ae622e435ff1749ff2347",
         intel: "ff9fbee227d1db1702994ee383eaa6e33b22f2cc125d36d4ec7773f34a7e5023"

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
