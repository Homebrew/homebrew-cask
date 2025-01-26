cask "muteme" do
  arch arm: "arm64", intel: "x64"

  version "0.24.8"
  sha256 arm:   "31288e7f8c1b49e2cedd3ed63a3a7ee2c7f7e648f151edc195a08fb4fb6efdb0",
         intel: "c0b038cf3da93e17019c9969c5a72e2a45525076b5abd537d120e677a9402f90"

  url "https://mutemedownloads.s3.us-east-2.amazonaws.com/main/#{version}/MuteMe-Client-#{version}-#{arch}.dmg",
      verified: "mutemedownloads.s3.us-east-2.amazonaws.com/"
  name "MuteMe"
  desc "Companion application to MuteMe"
  homepage "https://muteme.com/"

  livecheck do
    url "https://muteme.io/update/osx_#{arch}/0.0.0"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
