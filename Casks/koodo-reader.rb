cask "koodo-reader" do
  version "1.1.3"
  sha256 "6ded10a6b68f51c3703ab4db5283c7b9b43c61dcf88f4d8a7ccffe255dca283c"

  # github.com/troyeguo/koodo-reader was verified as official when first introduced to the cask
  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
