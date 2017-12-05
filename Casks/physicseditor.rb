cask 'physicseditor' do
  version '1.6.3'
  sha256 '93aafef2881d2c428016b30590e7a173d546735629e0d4fb616171841447bced'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: '17c0bca63a4fd3bf046d49eec67c25164969e1c7dee761a6c05ff5192aa7c03d'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
