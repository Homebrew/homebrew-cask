cask 'physicseditor' do
  version '1.8.0'
  sha256 '2d97266cf30a5dd6d56758d9f50aada38e8b35c9c804a90dfa96019629005346'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
