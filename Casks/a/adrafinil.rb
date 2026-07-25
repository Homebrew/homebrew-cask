cask "adrafinil" do
  version "1.5.2"
  sha256 "57e3e934017a196d3730b62dd572e6bbfbcf7395c3f33b0751fc1f5d95c4784d"

  url "https://github.com/kageroumado/adrafinil/releases/download/v#{version}/Adrafinil-#{version}.dmg",
      verified: "github.com/kageroumado/adrafinil/"
  name "Adrafinil"
  desc "Keep your computer awake while AI coding agents are working"
  homepage "https://kagerou.glass/adrafinil/"

  auto_updates true
  depends_on macos: :tahoe

  app "Adrafinil.app"

  uninstall quit: "glass.kagerou.adrafinil"

  zap trash: [
    "~/Library/Caches/glass.kagerou.adrafinil",
    "~/Library/Preferences/glass.kagerou.adrafinil.plist",
    "~/Library/Saved Application State/glass.kagerou.adrafinil.savedState",
  ]
end
