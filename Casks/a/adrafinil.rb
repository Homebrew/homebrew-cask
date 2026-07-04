cask "adrafinil" do
  version "1.3.0"
  sha256 "0b466fce5ced1db6764afa3d05603ad22cba759d1b6f4ebdd48f1a7e249bb9d6"

  url "https://github.com/kageroumado/adrafinil/releases/download/v#{version}/Adrafinil-#{version}.dmg",
      verified: "github.com/kageroumado/adrafinil/"
  name "Adrafinil"
  desc "Keep your Mac awake while AI coding agents are working"
  homepage "https://kagerou.glass/adrafinil/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Adrafinil.app"

  uninstall quit: "glass.kagerou.adrafinil"

  zap trash: [
    "~/Library/Caches/glass.kagerou.adrafinil",
    "~/Library/Preferences/glass.kagerou.adrafinil.plist",
    "~/Library/Saved Application State/glass.kagerou.adrafinil.savedState",
  ]
end
