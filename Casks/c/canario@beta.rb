cask "canario@beta" do
  version "2026.08.07.15"
  sha256 "aff4897319c2ab1464c9e547a7ba9803277326a1abdfc26c1b4ccbea8ae7f7e4"

  url "https://github.com/canarioterm/releases/releases/download/v#{version}/Canario.dmg"
  name "Canario Beta"
  desc "Terminal that thinks like a browser"
  homepage "https://rioterm.com/canario"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Canario.app"

  zap trash: [
    "~/Library/Application Support/canario",
    "~/Library/Caches/com.raphaelamorim.canario",
    "~/Library/HTTPStorages/com.raphaelamorim.canario",
    "~/Library/Preferences/com.raphaelamorim.canario.plist",
  ]
end
