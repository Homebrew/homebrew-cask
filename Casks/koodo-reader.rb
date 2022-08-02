cask "koodo-reader" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.7"

  if Hardware::CPU.intel?
    sha256 "66bcea2c2eaab9c04240dfa6c78288b543e9ec01529527a249150587507e35af"
  else
    sha256 "6affaf67a8026564ddf7e22dba3b9b7622c47792d34940eb09bd8a22a182c570"
  end

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
