cask "koodo-reader" do
  version "1.1.6"
  sha256 "5b8c9d148945a6711ee49139b969c1f1adba83d0b1161b1ca857feddf2fab580"

  # github.com/troyeguo/koodo-reader was verified as official when first introduced to the cask
  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
