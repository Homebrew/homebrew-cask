cask "facescreen" do
  version "3.1.0"
  sha256 "579897a84aa0221268302a6410df384e2f03f94cbe200b8322c651f1b8999b0b"

  url "https://rampatra.github.io/facescreen-updates/FaceScreen-#{version}.dmg",
      verified: "rampatra.github.io/facescreen-updates/"
  name "FaceScreen"
  desc "Camera and text overlay for presentations and screen sharing"
  homepage "https://facescreenapp.com/"

  livecheck do
    url "https://rampatra.github.io/facescreen-updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "FaceScreen.app"

  zap trash: [
    "~/Library/Caches/io.softal.FaceScreen",
    "~/Library/HTTPStorages/io.softal.FaceScreen",
    "~/Library/Preferences/io.softal.FaceScreen.plist",
    "~/Library/Saved Application State/io.softal.FaceScreen.savedState",
  ]
end
