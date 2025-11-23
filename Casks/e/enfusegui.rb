cask "enfusegui" do
  version "3.25.1"
  sha256 "9debfea477a31ef3cefa7d2ac3b3e415c1df6631b442590cfd7a32e1a4f6f20c"

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
