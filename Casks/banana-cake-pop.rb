cask "banana-cake-pop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.0.0-preview.42"

  if Hardware::CPU.intel?
    sha256 "0b28a5545975fab169b985ac9c70db9561fa0f5b876c838f91ad2129eb9e90b3"
  else
    sha256 "264e01672b79bade0eaf3951737dc3ead15d5fbeebf55afa0e98c04ee476343f"
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
