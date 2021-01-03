cask "koodo-reader" do
  version "1.1.9"
  sha256 "7cf486172059c59ac209b062848fa074f7c5f1c573aa7141c1f99e24db482658"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  appcast "https://github.com/troyeguo/koodo-reader/releases.atom"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
