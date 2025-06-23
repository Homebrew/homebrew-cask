cask "timeular" do
  arch arm: "-m1-arm64"
  livecheck_folder = on_arch_conditional arm: "m1", intel: "latest"

  version "6.9.5"
  sha256 arm:   "b40fc8a340522986f789e3ba0c137a927403f434f2e8ee7b77e697935d1aceb6",
         intel: "20bc25ce6e2a7f9929cfdeb288f50c600a85457b4d7aef7c3befe6a33020ae6f"

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
