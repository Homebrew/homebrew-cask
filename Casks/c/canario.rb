cask "canario" do
  version "2026.09.18.35"
  sha256 "1d13d7e8c0b1b223e1c4ba69abbef95be96f4436ef9f56cda71336b2dca9094c"

  url "https://github.com/canarioterm/releases/releases/download/v#{version}/Canario.dmg"
  name "Canario"
  desc "Terminal emulator"
  homepage "https://rioterm.com/canario"

  livecheck do
    url :url
    strategy :github_latest
  end

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
