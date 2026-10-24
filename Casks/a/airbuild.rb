cask "airbuild" do
  arch arm: "arm64"

  version "1.1.146"
  sha256 "aefbd9abd90ae9510b438cb9fb0d04e8fd2c101031f41fd8e6d6237e7655c139"

  url "https://release.air.build/macos/AirBuild-macOS-#{version.major_minor}-#{version.patch}.zip"
  name "AirBuild"
  desc "AI agents that build iOS apps and handle App Store review"
  homepage "https://air.build/"

  livecheck do
    url "https://release.air.build/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "AirBuild.app"

  zap trash: [
    "~/Library/Application Support/plus.yellow.AirBuild",
    "~/Library/Caches/plus.yellow.AirBuild",
    "~/Library/HTTPStorages/plus.yellow.AirBuild",
    "~/Library/Preferences/plus.yellow.AirBuild.plist",
  ]
end
