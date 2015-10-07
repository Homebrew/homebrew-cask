cask :v1 => 'physicseditor' do
  version '1.5.0'
  sha256 'ca3e62b6141e9394f6c61082820de57160c9364e51f5d01c2b66ef0671ceb558'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          :sha256 => '19214cc136bfc221dc9693c97061d0977ec4ce2707912135b186a61da4204014'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'
  license :freemium

  depends_on :macos => '>= :lion'
  depends_on :arch => [:x86_64, :ppc_64]

  app 'PhysicsEditor.app'
end
