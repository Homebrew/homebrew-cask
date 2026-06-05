cask "keyscreen" do
  version "2.2.0"
  sha256 "30e04bc9b85f6c8ecaf0793a194e2a5106da2feb4454dd20618d8da1f47a9cdc"

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
