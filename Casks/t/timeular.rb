cask "timeular" do
  arch arm: "-m1-arm64"
  livecheck_folder = on_arch_conditional arm: "m1", intel: "latest"

  version "6.9.4"
  sha256 arm:   "4ac0cec399836c0879d7fd065a5078d9c2269a4081dc2a91b271b19b65460ef7",
         intel: "5e69a194e7e8087ee59e80ed59bef2c9b18c5328ff3007b1a1d242df731cad01"

  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/EARLY-#{version}#{arch}.dmg",
      verified: "timeular-desktop-packages.s3.amazonaws.com/"
  name "Timeular"
  desc "Time tracking aided by a physical device"
  homepage "https://early.app/"

  livecheck do
    url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/#{livecheck_folder}-mac.yml"
    strategy :electron_builder do |item|
      item["version"]&.split("-")&.first
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Timeular.app"

  zap trash: [
    "~/Library/Application Support/Timeular",
    "~/Library/Logs/Timeular",
    "~/Library/Preferences/com.timeular.zei.plist",
  ]
end
