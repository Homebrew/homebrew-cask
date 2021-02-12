cask "compositor" do
  version "1.15.0"
  sha256 "8173da6029554240edbfbc01ec5c2814e5504191a93ea75d25e7ab41ea9c3fa2"

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
