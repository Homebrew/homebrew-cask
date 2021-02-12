cask "koodo-reader" do
  version "1.2.1"
  sha256 "c01d9a3ab0f5d33a5ff82232b32329f0fd49e3067cb2199d1d36d81dc9f1112e"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
