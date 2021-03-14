cask "koodo-reader" do
  version "1.2.3"
  sha256 "e97935f41665448fcab1c29115af19726175f5213e07d2c276c8070f27345e34"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
