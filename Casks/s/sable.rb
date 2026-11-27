cask "sable" do
  version "26.11.5"
  sha256 "39d977827b50c624bbbeac84655c8245afdfa17925fd6ec4749f4b4cf165c9a5"

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
