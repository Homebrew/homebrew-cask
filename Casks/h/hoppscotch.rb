cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.5.2-0"
  sha256 arm:   "53568417dde471cd4839d631e2b776c8a9dc00c4eb8a8d0d47c6a71a47a06af6",
         intel: "f3258c665333873cb35742030a9d1a9446cf4583ca64b52e4396de0aaa251510"

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
