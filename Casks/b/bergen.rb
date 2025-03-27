cask "bergen" do
  version "0.1.4"
  sha256 "6bb5846d739ddf59f03155be8d04465fa7d74cb080ebbc2261ffb57a945c9430"

  url "https://github.com/kkarimi/bergen/releases/download/v#{version}/bergen-macos-v0.1.4.zip"
  name "Bergen"
  desc "A React Native macOS app for Markdown viewing"
  homepage "https://github.com/kkarimi/bergen"

  app "bergen.app"

  zap trash: [
    "~/Library/Application Support/bergen",
    "~/Library/Caches/bergen",
    "~/Library/Preferences/com.kkarimi.bergen.plist",
    "~/Library/Saved Application State/com.kkarimi.bergen.savedState"
  ]
end
