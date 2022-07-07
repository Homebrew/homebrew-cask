cask "physicseditor" do
  version "1.9.2"
  sha256 "1b3617ebaa708e988de76a31f7252fe554d7bd061955428914879b23255e6f55"

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
