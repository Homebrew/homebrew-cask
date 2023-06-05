cask "drivedx" do
  version "1.11.0"
  sha256 "e72c18695916cc99ce10dd08b91d7c5d6d799ca471fef8cbabf79fb3a3d93bef"

  url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/bin/DriveDx.#{version}.zip"
  name "DriveDX"
  desc "Drive health diagnostic & monitoring tool"
  homepage "https://binaryfruit.com/drivedx"

  livecheck do
    url "https://binaryfruit.com/download/drivedx/mac/#{version.major}/updates/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "DriveDx.app"

  zap trash: [
    "~/Library/Application Support/DriveDx",
    "~/Library/Caches/com.binaryfruit.DriveDx",
    "~/Library/Caches/DriveDx",
    "~/Library/Logs/DriveDx",
    "~/Library/Preferences/com.binaryfruit.DriveDx.plist",
  ]
end
