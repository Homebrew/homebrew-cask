cask "koodo-reader" do
  version "1.2.6"
  sha256 "e43318f6c29c82aeb81c26597e188733e8a55f0166c3aceb9bd31a4b8a457a10"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
