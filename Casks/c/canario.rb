cask "canario" do
  version "2026.08.22.27"
  sha256 "21c60eb7fa6af923038c981423b2fc0ab3d11916d2fcc884e52d64f2c4a96a0c"

  url "https://github.com/canarioterm/releases/releases/download/v#{version}/Canario.dmg"
  name "Canario"
  desc "Terminal emulator"
  homepage "https://rioterm.com/canario"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Canario.app"

  uninstall quit: "com.raphaelamorim.canario"

  zap trash: [
    "~/Library/Application Support/canario",
    "~/Library/Caches/com.raphaelamorim.canario",
    "~/Library/HTTPStorages/com.raphaelamorim.canario",
    "~/Library/Preferences/com.raphaelamorim.canario.plist",
  ]
end
