cask "airbuild" do
  version "1.3.4"
  sha256 "508dcc1ed0e77e63e5f97b6cd9b8f24a710bd305adcd1e3d3ffa4c1e7f6781d5"

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
