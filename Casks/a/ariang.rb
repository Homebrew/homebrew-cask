cask "ariang" do
  arch arm: "arm64", intel: "x64"

  version "1.3.11"
  sha256 arm:   "b5290e421d6529d0dd4e0b49259c4062290229718cc8483abf55f9344bcddb57",
         intel: "68c3f3c1e8df4e7d8ecd617539a1a32635d6a750808b17f900a5fb4e0713c194"

  url "https://github.com/mayswind/AriaNg-Native/releases/download/#{version}/AriaNg_Native-#{version}-macOS-#{arch}.dmg"
  name "AriaNg Native"
  desc "Better aria2 desktop frontend than AriaNg"
  homepage "https://github.com/mayswind/AriaNg-Native"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :high_sierra"

  app "AriaNg Native.app"

  zap trash: [
    "~/Library/Preferences/net.mayswind.ariang.plist",
    "~/Library/Saved Application State/net.mayswind.ariang.savedState",
  ]
end
