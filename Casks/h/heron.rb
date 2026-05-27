cask "heron" do
  version "2.3.8"
  sha256 "eb81176f6d5234ba73ab7044a5d282251d18ee7fe4dbdbf8764b78b23585870b"

  url "https://github.com/tunjid/heron/releases/download/#{version}/com.tunjid.heron-#{version}.dmg",
  name "Heron"
  desc "Adaptive offline-first Bluesky client"
  homepage "https://github.com/tunjid/heron"

  depends_on :macos

  app "com.tunjid.heron.app"

  zap trash: [
    "~/Library/Application Support/com.tunjid.heron",
    "~/Library/Caches/com.tunjid.heron",
    "~/Library/Preferences/com.tunjid.heron.plist",
    "~/Library/Saved Application State/com.tunjid.heron.savedState",
  ]
end
