cask "notimanager" do
  version "2.2.0"
  sha256 "8da5087083bb76e861b8f2e174f198a3ffdac4c256e28c91476554981377df85"

  url "https://github.com/abd3lraouf/Notimanager/releases/download/v#{version}/Notimanager-#{version}.dmg"
  name "Notimanager"
  desc "macOS notification positioning utility"
  homepage "https://github.com/abd3lraouf/Notimanager"

  app "Notimanager.app"

  uninstall quit: "dev.abd3lraouf.notimanager"

  # Uses Sparkle for updates
  livecheck do
    url "https://github.com/abd3lraouf/Notimanager/releases/latest/download/appcast.xml"
    strategy :sparkle
  end
end
