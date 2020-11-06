cask "leech" do
  version "3.1.4"
  sha256 "1bbb16f6e759a96c0105898100b5cd9361463e0f15129adf6c607f0f3bee7009"

  url "https://manytricks.com/download/leech"
  appcast "https://manytricks.com/leech/appcast"
  name "Leech"
  homepage "https://manytricks.com/leech/"

  auto_updates true

  app "Leech.app"
end
