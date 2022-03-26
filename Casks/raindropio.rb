cask "raindropio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.4.21"

  if Hardware::CPU.intel?
    sha256 "31b1adc8d784abde661b3cee25ad848c0e251661376fb737f9478d003996457d"
  else
    sha256 "233cd2ed04edd6894f3d08c3e3a0dab464a1db1cb4abbc8db2cf84fcc050d3a3"
  end

  url "https://github.com/raindropio/desktop/releases/download/v#{version}/Raindrop-#{arch}.dmg",
      verified: "github.com/raindropio/desktop/"
  name "Raindrop.io"
  desc "All-in-one bookmark manager"
  homepage "https://raindrop.io/"

  livecheck do
    url "https://github.com/raindropio/desktop/releases"
    strategy :page_match
    regex(%r{v?(\d+(?:\.\d+)+)/Raindrop[._-]#{arch}\.dmg}i)
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
