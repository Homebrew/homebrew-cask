cask 'model-boiler' do
  version '2.2.0'
  sha256 '4f691add42bd657709eaf8f0ededd3cc8c585e7b8fc738eb03434e8ad1771658'

  url "https://github.com/nodes-ios/ModelBoiler/releases/download/#{version}/Model.Boiler.app.zip"
  appcast 'https://github.com/nodes-ios/ModelBoiler/releases.atom',
          checkpoint: '5de89ccdb88f04d15d9321162e3da2c963cca6cd541e27914300fedacb33bfdc'
  name 'ModelBoiler'
  homepage 'https://github.com/nodes-ios/ModelBoiler'

  app 'Model Boiler.app'
end
