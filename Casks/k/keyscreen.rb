cask "keyscreen" do
  version "2.3.0"
  sha256 "cede25ea5b847b92871549db2434370a04c4e7c3441df7929a1e687fe256b5a1"

  url "https://rampatra.github.io/keyscreen-updates/KeyScreen-#{version}.dmg"
  name "KeyScreen"
  desc "Show key presses on screen"
  homepage "https://keyscreenapp.com/"

  livecheck do
    url "https://rampatra.github.io/keyscreen-updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "KeyScreen.app"

  zap trash: [
    "~/Library/Caches/io.softal.KeyScreen",
    "~/Library/HTTPStorages/io.softal.KeyScreen",
    "~/Library/Preferences/io.softal.KeyScreen.plist",
    "~/Library/Saved Application State/io.softal.KeyScreen.savedState",
  ]
end
