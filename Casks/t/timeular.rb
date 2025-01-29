cask "timeular" do
  arch arm: "-m1-arm64"
  livecheck_folder = on_arch_conditional arm: "m1", intel: "latest"

  version "6.9.0"
  sha256 arm:   "920f7aee05d6386e382080ff112a2a7ee02e42f074e3a59b8f1a7d5a5625380d",
         intel: "b756c07870cbe5fd583f270a713a303a3de74828b8635834d43e4850744cf511"

  url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/Timeular-#{version}#{arch}.dmg",
      verified: "timeular-desktop-packages.s3.amazonaws.com/"
  name "Timeular"
  desc "Time tracking aided by a physical device"
  homepage "https://timeular.com/"

  livecheck do
    url "https://timeular-desktop-packages.s3.amazonaws.com/mac/production/#{livecheck_folder}-mac.yml"
    strategy :electron_builder do |item|
      item["version"]&.split("-")&.first
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Timeular.app"

  zap trash: [
    "~/Library/Application Support/Timeular",
    "~/Library/Logs/Timeular",
    "~/Library/Preferences/com.timeular.zei.plist",
  ]
end
