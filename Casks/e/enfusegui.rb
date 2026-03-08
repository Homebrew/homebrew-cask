cask "enfusegui" do
  version "3.26.0"
  sha256 "81c7252d220443563ab8fed1b2fffd6a55ce8cdb157b014428569e18a3cafc23"

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

  uninstall pkgutil: "com.swipeware.enfusegui-installer*"

  zap trash: [
    "~/Library/Application Scripts/com.swipeware.enfusegui",
    "~/Library/Containers/com.swipeware.enfusegui",
  ]
end
