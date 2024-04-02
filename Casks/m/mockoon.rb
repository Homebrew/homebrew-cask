cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "8.0.0"
  sha256 arm:   "5baa91e3c8593bf8c80a5ca65c1eb76753d77fe84834e55955ed62ca3cc92404",
         intel: "5cb8bfa31a162cf27f4cc8574ac00d7ec7c550824e1b03f2a7a75b78ea3a3696"

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
