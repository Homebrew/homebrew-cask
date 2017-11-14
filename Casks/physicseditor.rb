cask 'physicseditor' do
  version '1.6.2'
  sha256 '33539869b0d6eeae7ac361d06e01cc5d809af2b069745ea62a19c72f4a38a523'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: 'b8f60214da08549fc365bbc64b0e1084d99365e7b3f658265a3242a5bb422857'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'

  app 'PhysicsEditor.app'
end
