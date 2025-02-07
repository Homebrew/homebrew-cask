cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "25.1.1-0"
  sha256 arm:   "d4a61cf7a5949726d78603de4fdef0d662c4db3c66a21221bcd3029846f955fd",
         intel: "c1daa0cd35c52fb0efab50ceae3c8f1383b73987e9be64522f393e1c12486935"

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
