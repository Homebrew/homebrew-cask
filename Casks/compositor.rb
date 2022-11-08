cask "compositor" do
  version "1.20.3"
  sha256 "3f6ff8d2111445fcf255f83525a321b2d47613c41ca25e984d8f5c2a39a22ddc"

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  name "Compositor"
  desc "WYSIWYG LaTeX editor"
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
