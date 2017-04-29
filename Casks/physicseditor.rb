cask 'physicseditor' do
  version '1.6.0'
  sha256 '9c31915cb942b97833f1e6090a5bfc192a7025396dc590e83c6c36b8368f1b79'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: 'b34a3acb9519cc5bd760643cefe38f608f9235b8ac2cacf7306422b2a1fde360'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
