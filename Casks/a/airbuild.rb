cask "airbuild" do
  version "1.7.63"
  sha256 "669ebb6c8113d9115ab20ee72cf16050f4bcf9659a07151b3d5214a82d1d4376"

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
