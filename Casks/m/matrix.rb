cask "matrix" do
  version "0.1.88"
  sha256 "a0ec48c6e87f50336c4c689c6055701be075051d3bd396fe11c20fb886248114"

  url "https://download.matrix.build/mac/#{version}/Matrix-#{version}-arm64.dmg"
  name "Matrix"
  desc "Workspace for coordinating AI agents"
  homepage "https://matrix.build/"

  livecheck do
    url "https://download.matrix.build/mac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Matrix.app"

  uninstall quit: "com.matrixai.app"

  zap trash: [
    "~/Library/Application Support/com.matrixai.app",
    "~/Library/Application Support/Matrix",
    "~/Library/Caches/com.matrixai.app",
    "~/Library/Caches/Matrix",
    "~/Library/HTTPStorages/com.matrixai.app",
    "~/Library/HTTPStorages/com.matrixai.app.binarycookies",
    "~/Library/Preferences/com.matrixai.app.plist",
    "~/Library/Saved Application State/com.matrixai.app.savedState",
    "~/Library/WebKit/com.matrixai.app",
  ]
end
