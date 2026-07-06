cask "adrafinil" do
  version "1.4.0"
  sha256 "16e4aa59df6ae8ef851c9f49ec28a31f77bec9d346627c2f7df2ce48680d0175"

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
