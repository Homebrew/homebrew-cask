cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "12.0.2"
  sha256 arm:   "b0876687b653e73e1e4185e3abbaca88e14a34fb97e0b05c4ef73eacb3b4f4b9",
         intel: "35f0d6517356e23aafb2432f5e0c2e9e52b81a0f3e23c8caa3e3d9c480a9390d"

  url "https://download.chillicream.com/bananacakepop/BananaCakePop-#{version}-mac-#{arch}.dmg"
  name "Banana Cake Pop"
  desc "IDE to interact with GraphQL servers"
  homepage "https://chillicream.com/"

  livecheck do
    url "https://download.chillicream.com/bananacakepop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Banana Cake Pop.app"

  zap trash: [
    "~/Library/Application Support/bananacakepop",
    "~/Library/Application Support/@banana-cake-pop",
    "~/Library/Caches/com.chillicream.bananacakepop.ShipIt",
    "~/Library/Caches/com.chillicream.bananacakepop",
    "~/Library/Preferences/ByHost/com.chillicream.bananacakepop.ShipIt.*.plist",
    "~/Library/Preferences/com.chillicream.bananacakepop.plist",
    "~/Library/Saved Application State/com.chillicream.bananacakepop.savedState",
  ]
end
