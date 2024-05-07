cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "16.0.0"
  sha256 arm:   "1a1a55f15299d9f355205f176341ddd42ad18eee0df8b2917a47b14c25d1b130",
         intel: "181260f5210d0fb4e7651913685975d568545054629ad4e81aec91d5933302a7"

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
