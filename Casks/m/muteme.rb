cask "muteme" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64", intel: "_64"

  version "0.25.8"
  sha256 arm:   "b31ea1510fb16ade1ed4f7b2b2475a0297096ac4080c06a5ff0bcc8073d57b15",
         intel: "77b943ab03b5e824c3e6df2a90d0b995e9d823f1b7a4771181538beaf0498989"

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
