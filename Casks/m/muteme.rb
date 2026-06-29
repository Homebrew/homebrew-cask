cask "muteme" do
  arch arm: "arm64", intel: "64"

  version "0.27.2"
  sha256 arm:   "96cdf78449cd422c5581f0676adca016bf1c4077308cccd900803e9ab7b2c57f",
         intel: "9072461e07b5072c541d4e9a2c08b24fd635f3dc047500ce7d72dcbcdbfbf638"

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
  depends_on macos: :big_sur

  app "MuteMe-Client.app"

  zap trash: [
    "~/Library/Application Support/MuteMe-Client",
    "~/Library/Caches/com.electron.muteme-client",
    "~/Library/Caches/com.electron.muteme-client.ShipIt",
    "~/Library/HTTPStorages/com.electron.muteme-client",
    "~/Library/Preferences/com.electron.muteme-client.plist",
    "~/Library/Saved Application State/com.electron.muteme-client.savedState",
  ]
end
