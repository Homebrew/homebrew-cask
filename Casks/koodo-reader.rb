cask "koodo-reader" do
  arch arm: "-arm64"

  version "1.5.1"
  sha256 arm:   "29939046e324835e2054d251e83f252992c51b5a45ae47bedeb2dd8d7cd82fa8",
         intel: "6f06f60bc5ef34e947be07874914641cddd6379fe676b11bcdbb79493c9a4d79"

  url "https://github.com/troyeguo/koodo-reader/releases/download/v#{version}/Koodo-Reader-#{version}#{arch}.dmg",
      verified: "github.com/troyeguo/koodo-reader/"
  name "Koodo Reader"
  desc "Open-source Epub reader with backup and restore support"
  homepage "https://koodo.960960.xyz/"

  app "Koodo Reader.app"
end
