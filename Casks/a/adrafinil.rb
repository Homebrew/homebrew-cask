cask "adrafinil" do
  version "1.14.2"
  sha256 "99d6776a86ffd4ad313a3e8493e6f6369ca434007b380286f4e5fdbdb1bf72ad"

  url "https://github.com/kageroumado/adrafinil/releases/download/v#{version}/Adrafinil-#{version}.dmg"
  name "Adrafinil"
  desc "Keep your computer awake while AI coding agents are working"
  homepage "https://kagerou.glass/adrafinil/"

  auto_updates true
  depends_on macos: :tahoe

  app "Adrafinil.app"

  uninstall quit: "glass.kagerou.adrafinil"

  zap trash: [
    "~/Library/Application Support/Adrafinil",
    "~/Library/Caches/glass.kagerou.adrafinil",
    "~/Library/Preferences/glass.kagerou.adrafinil.plist",
    "~/Library/Saved Application State/glass.kagerou.adrafinil.savedState",
  ]
end
