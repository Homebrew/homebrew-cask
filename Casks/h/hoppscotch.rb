cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.9.0-0"
  sha256 arm:   "e89830c3fff02593536e47c27fc1f6ffdbbbb7f1bd8eb3f61d79ea434125c296",
         intel: "79801a325c4853fe1b7bcda429e4cfbf370b2454019ceb7911c7226e647540e4"

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
