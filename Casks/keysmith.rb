cask "keysmith" do
  version "1.7.0"
  sha256 "8eb6ffd284b50e42e248571c6192079418abb1ec8373d30c64056c63aa75db4c"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
