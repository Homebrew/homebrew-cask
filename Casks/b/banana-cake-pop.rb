cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "17.0.0"
  sha256 arm:   "a3b12587a6cde3641037e43fbd07e1a56f32ab95394fdc4ee0ee1c0e6cbcb455",
         intel: "1dab4ca0471820a6f497e474a20662b417043c76947ae0171d26a7f3eac4723d"

  url "https://download.chillicream.com/bananacakepop/BananaCakePop-#{version}-mac-#{arch}.dmg"
  name "Banana Cake Pop"
  desc "IDE to interact with GraphQL servers"
  homepage "https://chillicream.com/"

  livecheck do
    url "https://download.chillicream.com/bananacakepop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Banana Cake Pop.app"

  zap trash: [
    "~/Library/Application Support/@banana-cake-pop",
    "~/Library/Application Support/bananacakepop",
    "~/Library/Caches/com.chillicream.bananacakepop",
    "~/Library/Caches/com.chillicream.bananacakepop.ShipIt",
    "~/Library/Preferences/ByHost/com.chillicream.bananacakepop.ShipIt.*.plist",
    "~/Library/Preferences/com.chillicream.bananacakepop.plist",
    "~/Library/Saved Application State/com.chillicream.bananacakepop.savedState",
  ]
end
