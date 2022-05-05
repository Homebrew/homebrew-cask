cask "physicseditor" do
  version "1.9.1"
  sha256 "fa2e8dec3999c3a10b9c8dd4ea24ad46c67ba26877ed82a5be27ba183b2a7d5b"

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}.dmg"
  name "PhysicsEditor"
  desc "2D collision shape editor"
  homepage "https://www.codeandweb.com/physicseditor"

  livecheck do
    url "https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml"
    strategy :sparkle
  end

  app "PhysicsEditor.app"
end
