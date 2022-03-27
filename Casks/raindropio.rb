cask "raindropio" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "5.4.22"

  if Hardware::CPU.intel?
    sha256 "2459e5b3cf7fecf06004ccb4e8b6ac79954a3199c797563f1ae3301465378b54"
  else
    sha256 "8072e9d5b7b9af5823b4bcad1b305c03ec2effc72906b913df69725ed3954639"
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
