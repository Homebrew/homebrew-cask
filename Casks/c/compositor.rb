cask "compositor" do
  version "1.28.0"
  sha256 "45257a424636ead2fcb6fad606fbd248723b4670283767ec4431a2648a48cc95"

  url "https://compositorapp.com/updates/Compositor_#{version}.zip"
  name "Compositor"
  desc "WYSIWYG LaTeX editor"
  homepage "https://compositorapp.com/"

  livecheck do
    url "https://compositorapp.com/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Compositor.app"

  zap trash: [
    "~/Library/Application Scripts/com.microlarge.Compositor",
    "~/Library/Containers/com.microlarge.Compositor",
    "~/Library/Preferences/com.microlarge.Compositor.plist",
  ]
end
