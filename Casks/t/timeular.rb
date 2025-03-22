cask "timeular" do
  arch arm: "-m1-arm64"
  livecheck_folder = on_arch_conditional arm: "m1", intel: "latest"

  version "6.9.3"
  sha256 arm:   "11dd879671158ac80bf69288313e7714c0effa58dc012d593340ab42ac1b3445",
         intel: "eddadb1374458ec2da17a8f3fb79c6b610ad6968db850626c290534c37ffa45a"

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
