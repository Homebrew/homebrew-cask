cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "8.3.0"
  sha256 arm:   "11dc86cdcbb9aceef296ee856b9cc2a64317f89716f188f76435e6da8fa6fcaf",
         intel: "0a18a19bc4705d78a394a77c28ed76c8723566eb69899c687c679720931e32a2"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
