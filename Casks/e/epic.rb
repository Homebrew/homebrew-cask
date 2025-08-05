cask "epic" do
  arch arm: "arm"

  version "138.0.7204.50"
  sha256 arm:   "8a9f8b892de4b49ff7e3d3b1712b231dbc45ff8b90a645d60213e62942185b3b",
         intel: "b982ada33880e55010779f5f03dc8c4d0d661448767cc50d093ef5dee09a48fb"

  url "https://cdn.epicbrowser.com/mac#{version.major}#{arch}/epic_#{version}.dmg"
  name "Epic Privacy Browser"
  desc "Private, secure web browser"
  homepage "https://epicbrowser.com/"

  livecheck do
    url "https://epicbrowser.com/thank-you"
    regex(%r{href=.*?/mac\d+#{arch}/epic[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Epic.app"

  zap trash: [
    "~/Library/Application Support/HiddenReflex/Epic",
    "~/Library/Preferences/com.hiddenreflex.Epic.plist",
    "~/Library/Saved Application State/com.hiddenreflex.Epic.savedState",
  ]
end
