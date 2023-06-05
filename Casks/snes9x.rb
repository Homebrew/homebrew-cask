cask "snes9x" do
  version "1.62.3"
  sha256 "d2e71fad2c2ebdcf6b31a91d0a7f60e9df1799a1454a6b29bc2a089b9022cec7"

  url "https://github.com/snes9xgit/snes9x/releases/download/#{version}/snes9x-#{version}-Mac.zip",
      verified: "github.com/snes9xgit/snes9x/"
  name "Snes9x"
  desc "Video game console emulator"
  homepage "https://www.snes9x.com/"

  app "Snes9x.app"

  zap trash: [
    "~/Library/Application Support/Snes9x",
    "~/Library/Preferences/com.snes9x.macos.snes9x.plist",
    "~/Library/Saved Application State/com.snes9x.macos.snes9x.savedState",
  ]
end
