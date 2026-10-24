cask "airbuild" do
  arch arm: "arm64"

  version "1.1.143"
  sha256 "acb4144b9f1cde76f065bc1febae37e921eeb268a8cf004d9857b7536aeb5b5c"

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
    "~/Library/Caches/plus.yellow.AirBuild",
    "~/Library/Containers/plus.yellow.AirBuild",
    "~/Library/Group Containers/group.plus.yellow.AirBuild",
    "~/Library/HTTPStorages/plus.yellow.AirBuild",
    "~/Library/HTTPStorages/plus.yellow.AirBuild.binarycookies",
    "~/Library/Preferences/plus.yellow.AirBuild.plist",
    "~/Library/Saved Application State/plus.yellow.AirBuild.savedState",
    "~/Library/WebKit/plus.yellow.AirBuild",
  ]
end
