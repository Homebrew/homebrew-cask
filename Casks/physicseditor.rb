cask "physicseditor" do
  version "1.8.5"
  sha256 "4ec8bbd008504c581d2838059584878693d0c5d462d11d8b71afa65ce70fa35e"

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast "https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml"
  name "PhysicsEditor"
  homepage "https://www.codeandweb.com/physicseditor"

  app "PhysicsEditor.app"
end
