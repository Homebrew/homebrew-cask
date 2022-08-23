cask "koodo-reader" do
  arch arm: "-arm64"

  version "1.4.7"
  sha256 arm:   "6affaf67a8026564ddf7e22dba3b9b7622c47792d34940eb09bd8a22a182c570",
         intel: "66bcea2c2eaab9c04240dfa6c78288b543e9ec01529527a249150587507e35af"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
