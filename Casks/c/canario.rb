cask "canario" do
  version "2026.11.21.43"
  sha256 "c7a32befcefed3b466091392f9e0ba0caad6791b79529e76bbcbf7c6d1a71c71"

  url "https://github.com/canarioterm/releases/releases/download/v#{version}/Canario.dmg"
  name "Canario"
  desc "Terminal emulator"
  homepage "https://rioterm.com/canario"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Canario.app"

  uninstall quit: "com.raphaelamorim.canario"

  zap trash: [
    "~/Library/Application Support/canario",
    "~/Library/Caches/com.raphaelamorim.canario",
    "~/Library/HTTPStorages/com.raphaelamorim.canario",
    "~/Library/Preferences/com.raphaelamorim.canario.plist",
  ]
end
