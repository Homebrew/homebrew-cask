cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.3.1-0"
  sha256 arm:   "7bf955c024eb47c5e8705efa93623d061b55c0d1d6f21901d4429845570f0180",
         intel: "e4d521d5bee3f8b292773155438f6593f7d6c0d33a8d5ec0889714b1e5e07a98"

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
