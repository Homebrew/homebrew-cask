cask "banana-cake-pop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.0.0-preview.35"

  if Hardware::CPU.intel?
    sha256 "21fb558047a76ea49f4618131710aebf193b5707811bc66d73ff9eb8beeb4e3e"
  else
    sha256 "39c92663a322459d350695b73c7fe3a72e486e725239c6858a8e717f8e2a8214"
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
