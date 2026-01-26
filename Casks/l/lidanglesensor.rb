cask "lidanglesensor" do
  version "1.0.3"
  sha256 "3ee216765f12673527cea98d5509bcd5799333653030ac7f953e3c7fa3dd2cd2"

  url "https://github.com/samhenrigold/LidAngleSensor/releases/download/#{version}/LidAngleSensor.app.zip"
  name "LidAngleSensor"
  desc "Utility to display the lid angle and play a creaking sound"
  homepage "https://github.com/samhenrigold/LidAngleSensor"

  depends_on macos: ">= :big_sur"

  app "LidAngleSensor.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gold.samhenri.lidanglesensor.sfl*"
end
