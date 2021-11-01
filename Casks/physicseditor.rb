cask "physicseditor" do
  version "1.8.6"
  sha256 "a29747ef56a37578f17b08b6eaa2e36a1311464b0a5bd3d6bc5087ac96fead7a"

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  name "PhysicsEditor"
  homepage "https://www.codeandweb.com/physicseditor"

  livecheck do
    url "https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml"
    strategy :sparkle
  end

  app "PhysicsEditor.app"
end
