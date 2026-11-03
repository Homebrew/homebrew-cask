cask "remanager" do
  version "2.0.0"
  sha256 "26d9e9ff7d6d5a8e581d281734cb763ceab7795479de529ffc730ec516b89d03"

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
    "~/Library/Preferences/com.wails.reManager.plist",
  ]
end
