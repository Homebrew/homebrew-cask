cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.3.1-2"
  sha256 arm:   "178bd0c1d34e6c813c171ef94dfc08d10c5b6399f6b324f8b04221800bb66797",
         intel: "8ad0ba3dd35dcdcc392effe14244f402c4c643c9264f04fa722a72680ca7a61f"

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
