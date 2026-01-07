cask "muteme" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64", intel: "_64"

  version "0.25.9"
  sha256 arm:   "88478758ad1acc37462ccf5850f938874e4f278c08538f3926055cd24565cbc6",
         intel: "94539f5f799bad108b326f3f917d65f5eb2b587f0a01b7cf890a73a5285ed4df"

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
