cask :v1 => 'physicseditor' do
  version '1.0.11'
  sha256 '8271a9786d43fd652932ccb19f5642dfec8c698201527ebc784b0c37ce53d1ee'

  url "https://www.codeandweb.com/download/physicseditor/#{version}/PhysicsEditor-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/PhysicsEditor/appcast-mac-release.xml',
          :sha256 => 'a908f304de5309eba0ca29f3a4105fb97d780c8c9f77137f6f6d6c709bcef2c5'
  name 'PhysicsEditor'
  homepage 'https://www.codeandweb.com/physicseditor'
  license :freemium

  app 'PhysicsEditor.app'
end
