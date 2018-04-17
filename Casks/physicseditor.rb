cask 'physicseditor' do
  version '1.6.4'
  sha256 'b009ba02b40c3c7b7a36845bce978acd006b1df9bd0c166a7329d4309cde0f7e'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: '6218bb475ad17ca5307d2c85e6224b7992667764617514a89a433da12b804f49'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
