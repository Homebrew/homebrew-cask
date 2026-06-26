cask "matrix" do
  version "0.1.87,119"
  sha256 "b16e8d7f70a99783c2987a57cedbf2625eb150ee43da44e2f5c46e34786ed5af"

  url "https://download.matrix.build/mac/#{version.csv.first}/Matrix-#{version.csv.first}-arm64.dmg"
  name "Matrix"
  desc "Workspace for coordinating AI agents"
  homepage "https://matrix.build/"

  livecheck do
    url "https://download.matrix.build/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Matrix.app"

  uninstall quit: "com.matrixai.app"

  zap trash: [
    "~/.browser-v2",
    "~/.neo",
    "~/Library/Application Support/com.matrixai.app",
    "~/Library/Application Support/Matrix",
    "~/Library/Caches/com.matrixai.app",
    "~/Library/Caches/Matrix",
    "~/Library/Caches/neo-cli-nodejs",
    "~/Library/Caches/neo-cuadriver",
    "~/Library/HTTPStorages/com.matrixai.app",
    "~/Library/HTTPStorages/com.matrixai.app.binarycookies",
    "~/Library/Preferences/com.matrixai.app.plist",
    "~/Library/Saved Application State/com.matrixai.app.savedState",
    "~/Library/WebKit/com.matrixai.app",
  ]
end
