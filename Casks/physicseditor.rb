cask 'physicseditor' do
  version '1.7.0'
  sha256 '86c7798a0539bab218a96d89d3bfc9575dce73f993ed81d1915d14953652b3d1'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: '57cba692118e20d55c3c2893adb979a3f71459d33206982281da7c4ba44d8abd'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
