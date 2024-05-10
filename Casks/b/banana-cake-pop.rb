cask "banana-cake-pop" do
  arch arm: "arm64", intel: "x64"

  version "16.0.1"
  sha256 arm:   "7a3cfcec6f57975d6f8f5187f41da453ab849f96cf8f6a829a09b4b8825ce11c",
         intel: "cb33d37cd9be67eef9ee369540d49a13e49ff825bd6c35a31e0e3c3661a5efd2"

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
