cask "drivedx" do
  version "1.12.0"
  sha256 "eaf33a2bf35ff2a33753637b79d98020020f44443674b7e1af738145d1e73d1c"

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
