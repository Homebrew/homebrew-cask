cask "koodo-reader" do
  version "1.1.8"
  sha256 "86130d4833588d0188f266a204532662e9471cb17494a169089c172acf302876"

  # github.com/troyeguo/koodo-reader was verified as official when first introduced to the cask
  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
