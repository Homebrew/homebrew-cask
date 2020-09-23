cask "keysmith" do
  version "1.0.10"
  sha256 "6c6315f91a6ff04dc2968d9df705eb2d17d07383cca6abbbaf775a6ae58709ca"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
