cask "keysmith" do
  version "1.8.1"
  sha256 "ed99df06e5814b43ea9760527afbf45c69ca88a947fd2b6b5b81fc41ef73a4ad"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
