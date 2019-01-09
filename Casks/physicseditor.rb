cask 'physicseditor' do
  version '1.8.2'
  sha256 'af8cb5c6c752ef4cb626d1fa9577a28d33a9216fb6a100ceb9f2bb20b22e97cc'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
