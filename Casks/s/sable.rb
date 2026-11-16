cask "sable" do
  version "26.11.0"
  sha256 "8caa75b6ca9060b805bf69153049b2de566b66ea2895415bd5cdfd7423b04e7c"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/moe.sable.client.sfl*",
    "~/Library/Application Support/moe.sable.client*",
    "~/Library/Caches/moe.sable.client",
    "~/Library/HTTPStorages/moe.sable.client",
    "~/Library/Preferences/moe.sable.client.plist",
    "~/Library/Saved Application State/moe.sable.client.savedState",
    "~/Library/WebKit/moe.sable.client",
  ]
end
