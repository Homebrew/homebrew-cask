cask "raycast" do
  version "1.51.1"
  sha256 "e94d1db03948b94e0e8e017c96f5dbb5543ec45079e0a6696acbdddf4ee371ae"

  url "https://releases.raycast.com/releases/#{version}/download?build=universal"
  name "Raycast"
  desc "Control your tools with a few keystrokes"
  homepage "https://raycast.com/"

  livecheck do
    url :url
    regex(/Raycast[._-]v?(\d+(?:\.\d+)+)(?:[._-](\h+))[._-]universal\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Raycast.app"

  uninstall quit: "com.raycast.macos"

  zap trash: [
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/Preferences/com.raycast.macos.plist",
  ]
end
