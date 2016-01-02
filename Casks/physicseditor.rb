cask 'physicseditor' do
  version '1.5.2'
  sha256 '98b4c0d3b7db1df2bac0163cb3bb25c67c5e011b74291ccb9f8acfd62cbd8d6f'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          :sha256 => '360da772f6506501942b1cdb76db6caeefb168abd94693538df7fb4e9593699d'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'
  license :freemium

  depends_on :macos => '>= :lion'
  depends_on :arch => [:x86_64, :ppc_64]

  app 'PhysicsEditor.app'
end
