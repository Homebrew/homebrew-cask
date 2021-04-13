cask "koodo-reader" do
  version "1.2.4"
  sha256 "2a7e118034adb22fb02a201bee12a66f1924158ac4675ed943d09042897c386a"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
