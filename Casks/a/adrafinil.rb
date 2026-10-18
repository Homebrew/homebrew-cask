cask "adrafinil" do
  version "1.13.0"
  sha256 "538e8aa21bdcb34d93bb7136b22dadea51a15e7223f65348dd9f2b4e0f6c8704"

  url "https://github.com/kageroumado/adrafinil/releases/download/v#{version}/Adrafinil-#{version}.dmg"
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
