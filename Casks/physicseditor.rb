cask 'physicseditor' do
  version '1.5.2'
  sha256 '98b4c0d3b7db1df2bac0163cb3bb25c67c5e011b74291ccb9f8acfd62cbd8d6f'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: '9ab368e938edfa3b5442bfa81597351aff8d7d5d7daa2f9db63d65aa4d38b979'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'

  depends_on macos: '>= :lion'
  depends_on arch: [:x86_64, :ppc_64]

  app 'PhysicsEditor.app'
end
