cask "epic" do
  arch arm: "arm", intel: "intel"

  version "150.0.7871.24"
  sha256 arm:   "18c33c72bfb215159321752da01f98adcddd500bf02ffb988fa22d42602d240b",
         intel: "95ab3a521943061f24426fff7dbfd49a9c911d18e79642038bcbf0b3fb864421"

  url "https://cdn.epicbrowser.com/v#{version.major}/Epic_#{version}_#{arch}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(/href=.*?Epic[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: :monterey

  app "Epic.app"

  zap trash: [
    "~/Library/Application Support/HiddenReflex/Epic",
    "~/Library/Preferences/com.hiddenreflex.Epic.plist",
    "~/Library/Saved Application State/com.hiddenreflex.Epic.savedState",
  ]
end
