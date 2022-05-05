cask "snes9x" do
  version "1.61"
  sha256 "dc0fce0eb7db92e6d8827309f595a83e7fa77c84a18fe9c4df541d2dedfd7d1b"

  url "https://github.com/snes9xgit/snes9x/releases/download/#{version}/snes9x-#{version}-macos.zip",
      verified: "https://github.com/snes9xgit/snes9x/"
  name "Snes9x"
  desc "Video game console emulator"
  homepage "https://www.snes9x.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Snes9x.app"

  zap trash: [
    "~/Library/Application Support/Snes9x",
    "~/Library/Preferences/com.snes9x.macos.snes9x.plist",
    "~/Library/Saved Application State/com.snes9x.macos.snes9x.savedState",
  ]
end
