cask 'physicseditor' do
  version '1.8.3'
  sha256 '8c755faec5432b01940e9651c946d34860d3836b7f7fefba69e91e792d9a27cc'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  app 'PhysicsEditor.app'
end
