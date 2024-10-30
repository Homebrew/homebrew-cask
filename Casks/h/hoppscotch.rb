cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.10.0-0"
  sha256 arm:   "68cfdc3f02a9e8118a703d4c9d9ce1d911339ea2a0cf54eebdd756b18e8ea7a1",
         intel: "fd92ef58490030333ce41adbe113fe1b3abede1d56f54bc25a82a8509f908bb0"

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
