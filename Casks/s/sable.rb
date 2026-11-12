cask "sable" do
  version "2.3.8"
  sha256 "af4ddc3e426af80921b98472e6ff8d140963960f83f3903856d0b6c5f3bfc137"

  url "https://git.sable.moe/SableClient/sable-next/releases/download/v#{version}/sable-#{version}-arm64.dmg"
  name "Sable"
  desc "Client for the Matrix chat network"
  homepage "https://sable.moe/"

  livecheck do
    url "https://git.sable.moe/SableClient/sable-next/releases/download/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Sable.app"

  uninstall quit: "moe.sable.client"

  zap trash: [
    "~/Library/Application Support/moe.sable.client*",
    "~/Library/Caches/moe.sable.client",
    "~/Library/HTTPStorages/moe.sable.client",
    "~/Library/Preferences/moe.sable.client.plist",
    "~/Library/Saved Application State/moe.sable.client.savedState",
    "~/Library/WebKit/moe.sable.client",
  ]
end
