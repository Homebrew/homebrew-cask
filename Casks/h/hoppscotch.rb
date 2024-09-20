cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "24.8.3-0"
  sha256 arm:   "c6f484cb2ed14cdc5f37cdebf0d66bb6b896699f0ff4303698c1f7ac7edf08a0",
         intel: "9e9ff6e438aa928cb594fb78ab21a74c2f3e7286b94304416075471b5dafcb08"

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
