cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "8.1.0"
  sha256 arm:   "ff06e61dedc6939ce48ae1ae2e8a42e3fc49fe7a446ab7dfe7a4d8eab18413c9",
         intel: "d8292631d922d57450e5ed411446386b5673effe48ae5c4f66fd65be4ab8ab4c"

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
