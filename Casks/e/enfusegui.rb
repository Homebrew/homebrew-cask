cask "enfusegui" do
  version "3.25.0"
  sha256 "d07a51c10b285bdbe5b6cd92b3e7c37eaa7b9ac6873a41c6f89f8194df1d82f4"

  url "https://swipeware.com/apps/enfusegui/v#{version.major}/EnfuseGUI-#{version}.dmg"
  name "EnfuseGUI"
  desc "HDR image creator"
  homepage "https://swipeware.com/applications/enfusegui/"

  livecheck do
    url "https://bit.ly/enfusegui3-mac"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  pkg "EnfuseGUI #{version}.pkg"

  uninstall pkgutil: "com.swipeware.enfusegui-installer.bjkzvwjjss"

  zap trash: [
    "~/Library/Application Scripts/com.swipeware.enfusegui",
    "~/Library/Containers/com.swipeware.enfusegui",
  ]
end
