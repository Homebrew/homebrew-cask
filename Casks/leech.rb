cask "leech" do
  version "3.1.4,3140"
  sha256 :no_check

  url "https://manytricks.com/download/leech"
  appcast "https://manytricks.com/leech/appcast"
  name "Leech"
  homepage "https://manytricks.com/leech/"

  auto_updates true

  app "Leech.app"
end
