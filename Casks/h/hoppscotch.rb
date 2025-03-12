cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.2.2-0"
  sha256 arm:   "92456c859fef16eaec92782ade52528100b7ac6334702594213d72a9f7556765",
         intel: "487432695d4b0cf7d4178d4b9948cbe9f752ebef318059d697c88af87ffde6cc"

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
