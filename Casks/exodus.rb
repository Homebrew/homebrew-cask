cask "exodus" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-arm64"

  version "21.10.22"

  url "https://downloads.exodus.com/releases/exodus-#{arch}-#{version}.dmg"
  if Hardware::CPU.intel?
    sha256 "9fc07ad2efa9215527a74fee1a679fe4afee15d4d7806a732e92b819a972f46d"
  else
    sha256 "f89ac6f75c1f192bf58433566052c3ac25d6c26eea5dccdaddbf074ef8f07f97"
  end

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
