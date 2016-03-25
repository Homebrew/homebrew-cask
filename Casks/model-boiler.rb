cask 'model-boiler' do
  version '2.1.2'
  sha256 '8169af020a1354ee1ee688da28d5dcde741e342dff73ab17a1fa94dcfa7d4d1e'

  url "https://github.com/nodes-ios/ModelBoiler/releases/download/#{version}/Model.Boiler.app.zip"
  appcast 'https://github.com/nodes-ios/ModelBoiler/releases.atom',
          checkpoint: '9f66dbb98f73f69f4a1759d4bdb8d2552060d599548427740e239ca45185fe5c'
  name 'ModelBoiler'
  homepage 'https://github.com/nodes-ios/ModelBoiler'
  license :mit

  app 'Model Boiler.app'
end
