cask "compositor" do
  version "1.24.0"
  sha256 "88af9743c727167f2af597dc19a0d14d0277ae2ce2ac8135f115d821971e5720"

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
