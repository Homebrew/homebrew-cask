cask "koodo-reader" do
  version "1.2.5"
  sha256 "ad1cdc1420439a361a3f3a44dea407ffe555795b153c255c2e61571d8912bcea"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
