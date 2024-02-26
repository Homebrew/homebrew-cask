cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "15.0.2"
  sha256 arm:   "d39837153f183176760e9242a8f437052a033593f234d4cc79ce9b6860b4f0e9",
         intel: "d6deb3358ce3df0bdce87154da115e29d78b0bea28f804b6cad366eb5ebbfe9e"

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
    "~/Library/Application Support/@banana-cake-pop",
    "~/Library/Application Support/bananacakepop",
    "~/Library/Caches/com.chillicream.bananacakepop",
    "~/Library/Caches/com.chillicream.bananacakepop.ShipIt",
    "~/Library/Preferences/ByHost/com.chillicream.bananacakepop.ShipIt.*.plist",
    "~/Library/Preferences/com.chillicream.bananacakepop.plist",
    "~/Library/Saved Application State/com.chillicream.bananacakepop.savedState",
  ]
end
