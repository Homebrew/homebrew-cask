cask "canario" do
  version "2026.08.13.24"
  sha256 "624b1be36e27577dc7ee6fb02da739bf96a1f85e0a3ce232747b621013654c95"

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

  zap trash: [
    "~/Library/Application Support/canario",
    "~/Library/Caches/com.raphaelamorim.canario",
    "~/Library/HTTPStorages/com.raphaelamorim.canario",
    "~/Library/Preferences/com.raphaelamorim.canario.plist",
  ]
end
