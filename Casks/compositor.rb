cask "compositor" do
  version "1.16.0"
  sha256 "f5a941aa1164b54276cc5bc0bec85c751107fd0868fe688084b147755e7df663"

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  name "Compositor"
  homepage "https://compositorapp.com/"

  livecheck do
    url "https://compositorapp.com/updates/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Compositor.app"

  zap trash: [
    "~/Library/Application Scripts/com.microlarge.Compositor",
    "~/Library/Containers/com.microlarge.Compositor",
    "~/Library/Preferences/com.microlarge.Compositor.plist",
  ]
end
