cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "14.0.0"
  sha256 arm:   "3a0d93da4a98737b216d5f8b6e0b8518320e3241aa6612c25b4585a550b7a670",
         intel: "2e28bcd64b58809de341db87d147b04c478afb0ba661ca4a779c4c598cd927be"

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
