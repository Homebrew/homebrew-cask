cask "remanager" do
  version "2.0.1"
  sha256 "99efc97a71a81198c8d8040b0e2cf9fb302ca8c1e0b7d42ff330b3e5d98fe764"

  url "https://github.com/rmitchellscott/reManager/releases/download/v#{version}/reManager-macos-universal.zip"
  name "reManager"
  desc "Desktop app for managing mods on reMarkable tablets"
  homepage "https://github.com/rmitchellscott/reManager"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "reManager.app"

  zap trash: [
    "~/Library/Application Support/reManager",
    "~/Library/Caches/com.wails.reManager",
    "~/Library/Caches/io.scottlabs.reManager",
    "~/Library/Preferences/com.wails.reManager.plist",
    "~/Library/WebKit/io.scottlabs.reManager",
  ]
end
