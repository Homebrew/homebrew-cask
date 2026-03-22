cask "lidanglesensor" do
  version "1.1"
  sha256 "d4b14e7d866589117e5b2cfc7f06e8f8b915dc81948073d9df091177d21e0780"

  url "https://github.com/samhenrigold/LidAngleSensor/releases/download/#{version}/LidAngleSensor.zip"
  name "LidAngleSensor"
  desc "Utility to display the lid angle and play a creaking sound"
  homepage "https://github.com/samhenrigold/LidAngleSensor"

  depends_on macos: ">= :sonoma"

  app "LidAngleSensor.app"

  zap trash: "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gold.samhenri.lidanglesensor.sfl*"
end
