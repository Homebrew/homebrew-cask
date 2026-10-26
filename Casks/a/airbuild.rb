cask "airbuild" do
  version "1.2.7"
  sha256 "1150cd4fcaf47b54f8c409f3b3c97d4d2cc96d5e8a34c9db6822653bf9c2b8e9"

  url "https://release.air.build/macos/AirBuild-macOS-#{version.major_minor}-#{version.patch}.zip"
  name "AirBuild"
  desc "AI agents that build iOS apps and handle App Store review"
  homepage "https://air.build/"

  livecheck do
    url "https://release.air.build/macos/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
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
