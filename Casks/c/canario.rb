cask "canario" do
  version "2026.11.13.37"
  sha256 "a59ab2293877e5d8aeebdf45e6e52051e004817f8a73bb2c6ae3c560663fda91"

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
