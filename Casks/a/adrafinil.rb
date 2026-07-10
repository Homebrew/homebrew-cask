cask "adrafinil" do
  version "1.5"
  sha256 "0f6a459b474651ea61a9d9b164a91740fe0952f04ba13091ec047f638e748085"

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
