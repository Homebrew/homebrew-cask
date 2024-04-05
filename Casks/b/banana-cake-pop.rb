cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "15.0.4"
  sha256 arm:   "21c624ceb3fed14f616950a5bbdd4734740465313ae876c6484fba43476a38b9",
         intel: "0ddb513835807f4a0f36edf80d76f86d99f9cacb96b6cc17589472cb88df1087"

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
