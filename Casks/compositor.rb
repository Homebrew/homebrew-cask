cask "compositor" do
  version "1.14.0"
  sha256 "9ede6513b3ff29d229a697f4cd3da445017c99e0221d744d506904be08c5a7b9"

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  appcast "https://compositorapp.com/updates/appcast.xml"
  name "Compositor"
  homepage "https://compositorapp.com/"

  depends_on macos: ">= :sierra"

  app "Compositor.app"

  zap trash: [
    "~/Library/Application Scripts/com.microlarge.Compositor",
    "~/Library/Containers/com.microlarge.Compositor",
    "~/Library/Preferences/com.microlarge.Compositor.plist",
  ]
end
