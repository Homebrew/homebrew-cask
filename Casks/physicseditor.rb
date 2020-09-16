cask "physicseditor" do
  version "1.8.4"
  sha256 "f2cc85872eebe7bb6e9e0a4f2dbbc60c2fd0607144d1beeb7ca5a837b1c0b2f2"

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast "https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml"
  name "PhysicsEditor"
  homepage "https://www.codeandweb.com/physicseditor"

  app "PhysicsEditor.app"
end
