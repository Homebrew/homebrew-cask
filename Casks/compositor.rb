cask "compositor" do
  version "1.22.0"
  sha256 "fc0eab3afdc527848d668e4d8ac5e800f53d73d2bf4b47f4f5309596860b609c"

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
