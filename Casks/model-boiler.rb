cask 'model-boiler' do
  version '2.1.4'
  sha256 'b011941c628ae91db76c54558ad57d07bdbe13e8770971f40ce6d368d597ce55'

  url "https://github.com/nodes-ios/ModelBoiler/releases/download/#{version}/Model.Boiler.app.zip"
  appcast 'https://github.com/nodes-ios/ModelBoiler/releases.atom',
          checkpoint: 'caab25cfbcd8bee242b06520f21023b847400a1fbd62db9b342480a1352b9b0e'
  name 'ModelBoiler'
  homepage 'https://github.com/nodes-ios/ModelBoiler'

  app 'Model Boiler.app'
end
