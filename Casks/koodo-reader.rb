cask "koodo-reader" do
  version "1.1.5"
  sha256 "07261194e1a88a1e4ec12139fcde037de396e8f6210f5be6f6fa457de00ece0b"

  # github.com/troyeguo/koodo-reader was verified as official when first introduced to the cask
  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
