cask "muteme" do
  arch arm: "arm64", intel: "64"

  version "0.27.9"
  sha256 arm:   "6466db56408389f098c7578e9dbea35b66a688069c198a25f04f279a2605c715",
         intel: "27768de45907bcee9104316a72bfab99d72a582ed070a814a98ac7c2c02a2d30"

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
