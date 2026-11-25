cask "canario" do
  version "2026.11.22.44"
  sha256 "39f0fcb87b330d37a895cc84ae1e65dbafda895abf86e7499e3fcd55eb6dc683"

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
