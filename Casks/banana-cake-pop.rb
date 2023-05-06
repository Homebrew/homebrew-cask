cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "5.0.2"
  sha256 arm:   "3383fbddd9005ff77bf1d97225523a5b03956e1a5a2bfa1f33cabc95a7a0c896",
         intel: "fb2b6555fc7058b212778513c74926f1404e4ddd7ac219be6041a2fc9c0989b0"

  url "https://download.chillicream.com/bananacakepop/BananaCakePop-#{version}-mac-#{arch}.dmg"
  name "Banana Cake Pop"
  desc "IDE to interact with GraphQL servers"
  homepage "https://chillicream.com/"

  livecheck do
    url "https://download.chillicream.com/bananacakepop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

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
