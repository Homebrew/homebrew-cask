cask "bergen" do
  version "0.1.5"
  sha256 "d5b6c78ef7b61a81c93f5af2843748e58258a594f33e49f3458047debfacb5ed"

  url "https://github.com/kkarimi/bergen/releases/download/v#{version}/bergen-macos-v0.1.5.zip"
  name "Bergen"
  desc "Lightweight markdown reader"
  homepage "https://github.com/kkarimi/bergen"

  app "bergen.app"

  zap trash: [
    "~/Library/Application Support/bergen",
    "~/Library/Caches/bergen",
    "~/Library/Preferences/com.kkarimi.bergen.plist",
    "~/Library/Saved Application State/com.kkarimi.bergen.savedState",
  ]
end
