cask "koodo-reader" do
  version "1.1.4"
  sha256 "87177111363024d0be220d7ea68285cdeafab047883c75a463d8926cf80b1690"

  # github.com/troyeguo/koodo-reader was verified as official when first introduced to the cask
  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
