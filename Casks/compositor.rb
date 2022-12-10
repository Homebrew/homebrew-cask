cask "compositor" do
  version "1.21.0"
  sha256 "48ba808964a09dc626b719c2c15ee2f9c5dafe1d76f5adce8447dd81e09af368"

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
