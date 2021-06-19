cask "koodo-reader" do
  version "1.2.7"
  sha256 "ad5c839644db62cb8edbbd3b2f5aa9b74d28154bf5afe35497057bd48a35578b"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
