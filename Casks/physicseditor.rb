cask 'physicseditor' do
  version '1.5.2'
  sha256 '98b4c0d3b7db1df2bac0163cb3bb25c67c5e011b74291ccb9f8acfd62cbd8d6f'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          checkpoint: 'c10b7011ea6450e6d3058afb319c05d6a1bdd84c012a33a6b0fe0643e59e5d25'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'
  license :freemium

  depends_on macos: '>= :lion'
  depends_on arch: [:x86_64, :ppc_64]

  app 'PhysicsEditor.app'
end
