cask "drivedx" do
  version "1.12.1"
  sha256 "2011868774efd3a96405058985bb3fb8df2d6f06aead3f06d5dfde8fb80c745a"

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
