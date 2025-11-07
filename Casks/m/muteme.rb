cask "muteme" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64", intel: "_64"

  version "0.25.7"
  sha256 arm:   "c36b6ca0db49047d41a22866a996a033a3874bb03d5722c3e9fc4198f542969d",
         intel: "9d2985762f03ceed84164ef454e601993762c5b5deef924cc4316af8de18737d"

  url "https://mutemedownloads.s3.us-east-2.amazonaws.com/main/#{version}/MuteMe-Client-#{version}-#{arch}.dmg",
      verified: "mutemedownloads.s3.us-east-2.amazonaws.com/"
  name "MuteMe"
  desc "Companion application to MuteMe"
  homepage "https://muteme.com/"

  livecheck do
    url "https://downloads.muteme.com/download/latest/osx#{livecheck_arch}"
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
