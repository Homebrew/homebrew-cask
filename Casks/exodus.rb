cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "21.11.5"

  if Hardware::CPU.intel?
    sha256 "428769df643ae4db1630ed37521d23d269a789511c93bebd68518d4fd1373f58"
  else
    sha256 "18ba180c1ca9a5ace4c87fcb39c3ecd879aa14f0d71452cacfb52cfe2085b651"
  end

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    regex(%r{/hashes[._-]exodus[._-]?v?(\d+(?:\.\d+)+)\.txt}i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
