cask "motrix" do
  version "1.5.15"
  sha256 "f918e23d01fabe75d1970d7839e80a2a2b220b9f66b9ae69d056734e8bb9046c"

  # github.com/ was verified as official when first introduced to the cask
  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}.dmg"
  appcast "https://github.com/agalwood/Motrix/releases.atom"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Preferences/net.agalwood.Motrix.plist",
    "~/Library/Saved Application State/net.agalwood.Motrix.savedState",
    "~/Library/Logs/Motrix",
    "~/Library/Caches/net.agalwood.Motrix",
  ]
end
