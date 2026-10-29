cask "spencer" do
  version "1.7.5"
  sha256 :no_check

  url "https://get.macspencer.app/Spencer.dmg"
  name "Spencer"
  desc "Window and workspace layout manager across Spaces and displays"
  homepage "https://macspencer.app/"

  livecheck do
    url "https://get.macspencer.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Spencer.app"

  zap trash: [
    "~/Library/Application Support/com.pineapple.spencer",
    "~/Library/Application Support/Spencer",
    "~/Library/Caches/com.pineapple.spencer",
    "~/Library/HTTPStorages/com.pineapple.spencer",
    "~/Library/Preferences/com.pineapple.spencer.plist",
    "~/Library/Saved Application State/com.pineapple.spencer.savedState",
  ]
end
