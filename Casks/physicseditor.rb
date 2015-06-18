cask :v1 => 'physicseditor' do
  version '1.0.10'
  sha256 '14ddcddafe6972e257476108be315a459f73694330c510921274322310d68876'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'
  license :freemium

  app 'PhysicsEditor.app'
end
