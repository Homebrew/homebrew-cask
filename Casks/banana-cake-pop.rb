cask "banana-cake-pop" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.0.0-preview.31"

  if Hardware::CPU.intel?
    sha256 "232bf6747abfa38825b602af80af2effe602db65a6645da7ced45ef8351483a7"
  else
    sha256 "4559afa617dfeaf88c21bdfa12a9ca68f296568b04c36877869767acee6c9a8a"
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
