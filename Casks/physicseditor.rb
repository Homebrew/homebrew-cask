cask :v1 => 'physicseditor' do
  version '1.0.11'
  sha256 '8271a9786d43fd652932ccb19f5642dfec8c698201527ebc784b0c37ce53d1ee'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'
  license :freemium

  app 'PhysicsEditor.app'
end
