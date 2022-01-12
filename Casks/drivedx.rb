cask "drivedx" do
  version "1.11.0,730"
  sha256 "e72c18695916cc99ce10dd08b91d7c5d6d799ca471fef8cbabf79fb3a3d93bef"

  url "https://download.binaryfruit.com/drivedx/mac/#{version.major}/DriveDx.#{version.csv.first}.zip"
  name "DriveDX"
  desc "Drive health diagnostic & monitoring tool"
  homepage "https://binaryfruit.com/drivedx"

  livecheck do
    url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/?appcast&appName=DriveDxMac"
    strategy :sparkle
  end

  auto_updates true

  app "DriveDx.app"

  zap trash: [
    "~/Library/Application Support/DriveDx",
    "~/Library/Caches/DriveDx",
    "~/Library/Caches/com.binaryfruit.DriveDx",
    "~/Library/Logs/DriveDx",
    "~/Library/Preferences/com.binaryfruit.DriveDx.plist",
  ]
end
