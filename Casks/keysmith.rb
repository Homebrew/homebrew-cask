cask "keysmith" do
  version "1.0.8"
  sha256 "5358ce2424a1899770fa73fbeac89da7b5da35390f74a65d71783f5d3e9e45d9"

  url "https://keysmith.app/versions/Keysmith-#{version}.dmg"
  appcast "https://www.keysmith.app/versions/appcast.xml"
  name "Keysmith"
  desc "Create custom keyboard shortcuts for anything"
  homepage "https://www.keysmith.app/"

  depends_on macos: ">= :catalina"

  app "Keysmith.app"
end
