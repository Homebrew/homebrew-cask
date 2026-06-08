cask "keyscreen" do
  version "2.2.3"
  sha256 "89fa3e4300d5c7eeee05cd2403ace53c4d46bdcf31233ee706895cc2c33914bd"

  url "https://rampatra.github.io/keyscreen-updates/KeyScreen-#{version}.dmg",
      verified: "rampatra.github.io/keyscreen-updates/"
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
