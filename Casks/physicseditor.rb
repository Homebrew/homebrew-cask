cask "physicseditor" do
  version "1.9.3"
  sha256 "4c14a3618fcb48616fc8e661ac2e79f2db63bbf4793adca196805215f59ba001"

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
