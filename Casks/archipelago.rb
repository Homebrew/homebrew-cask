cask "archipelago" do
  version "3.16.1"
  sha256 "b0b761d1293bc6876da2c3e5630e04957d299a4167f7296c4e1e4fde953d362d"

  url "https://github.com/npezza93/archipelago/releases/download/v#{version}/Archipelago-#{version}.dmg"
  name "Archipelago"
  desc "Terminal emulator built on web technology"
  homepage "https://github.com/npezza93/archipelago"

  app "Archipelago.app"
end
