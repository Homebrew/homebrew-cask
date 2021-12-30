cask "raindropio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.4.2"

  url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-#{arch}.dmg",
      verified: "github.com/raindropio/desktop/"
  if Hardware::CPU.intel?
    sha256 "0247825f9c23cf0cdc24dc1ada4b63a9113c76010a60355b52d432e3c1faada1"
  else
    sha256 "001d27bf87dcf46517e400f146227a330db16d34376bca2f996cbb668ee9d6a3"
  end

  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  livecheck do
    url "https://github.com/raindropio/desktop/releases"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)*)/Raindrop[._-]#{arch}\.dmg}i)
  end

  auto_updates true

  app "Raindrop.io.app"

  zap trash: [
    "~/Library/Application Support/Raindrop.io",
    "~/Library/Caches/com.apple.Safari/Extensions/Raindrop.io.safariextension",
    "~/Library/Cookies/io.raindrop.mac.binarycookies",
    "~/Library/Preferences/io.raindrop.mac.helper.plist",
    "~/Library/Preferences/io.raindrop.mac.plist",
    "~/Library/Safari/Extensions/Raindrop.io.safariextz",
    "~/Library/Saved Application State/io.raindrop.mac.savedState",
  ]
end
