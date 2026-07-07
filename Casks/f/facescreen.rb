cask "facescreen" do
  version "3.1.1"
  sha256 "70674050dce4e53d472abaa72cbc13d8c2b4a347139865aab56ef55be98d2210"

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
