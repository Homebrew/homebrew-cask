cask "koodo-reader" do
  arch arm: "-arm64"

  version "1.4.8"
  sha256 arm:   "88d9267e22850ff64d4de828c3ab9e60c31c4cf96efd27c0b48861567c99816a",
         intel: "619d7a1c1aafce4a674e785245cb4540cea1d3f65f39d9c56d6aa9a77b2d6044"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
