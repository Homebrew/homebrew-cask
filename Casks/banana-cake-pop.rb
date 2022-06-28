cask "banana-cake-pop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.0.0-preview.41"

  if Hardware::CPU.intel?
    sha256 "783d67d6b642240b654ef5c3bb83459102d3f4ddc65cd063199102c8934e4b4f"
  else
    sha256 "bb298c3c7e10ca99e109b72537272603991f6f13344bbc2debb55c6e6e8b44c8"
  end

  url "https://download.chillicream.com/bananacakepop/BananaCakePop-#{version}-mac-#{arch}.dmg"
  name "Banana Cake Pop"
  desc "IDE to interact with GraphQL servers"
  homepage "https://chillicream.com/"

  livecheck do
    # Update to `latest-mac.yml` when stable releases are avaliable
    url "https://download.chillicream.com/bananacakepop/preview-mac.yml"
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
