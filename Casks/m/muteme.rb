cask "muteme" do
  arch arm: "arm64", intel: "64"

  version "0.29.6"
  sha256 arm:   "b9710be05258731cf6a7203ad617c4ebdda136726a2f86e12c1b650366ab2a34",
         intel: "fc225a20e632f2839b725278058714d4903ce887d9e938ce9a902b74f9f2e017"

  url "https://downloads.muteme.com/download/#{version}/osx_#{arch}"
  name "MuteMe"
  desc "Companion application to MuteMe"
  homepage "https://muteme.com/"

  livecheck do
    url "https://downloads.muteme.com/download/latest/osx_#{arch}"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  auto_updates true
  depends_on :macos

  app "MuteMe-Client.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.muteme-client.sfl*",
    "~/Library/Application Support/MuteMe-Client",
    "~/Library/Caches/com.electron.muteme-client",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/HTTPStorages/com.electron.muteme-client",
    "~/Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
  ]
end
