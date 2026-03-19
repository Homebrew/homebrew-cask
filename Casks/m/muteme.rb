cask "muteme" do
  arch arm: "arm64", intel: "64"

  version "0.26.2"
  sha256 arm:   "cf1b5e66eda3aa1fa0a3c8d726f2139ec12cbfec4f401a945d1646429fdc50f3",
         intel: "7bf015f2d07d7db93fc7e5291216a596ec95122f2d2bda627ca5d71ca0a948dd"

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
  depends_on macos: ">= :big_sur"

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
