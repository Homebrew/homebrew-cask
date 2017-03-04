cask 'model-boiler' do
  version '2.2.1'
  sha256 'cef556700b07b4b4a8f4a20118af378f752c999f2e4ee7947e086c444c4de431'

  url "https://github.com/nodes-ios/ModelBoiler/releases/download/#{version}/Model.Boiler.app.zip"
  appcast 'https://github.com/nodes-ios/ModelBoiler/releases.atom',
          checkpoint: '7e185f1a5e114d39b2886511d4b040772f15235dbe26f4971a7be8eaac278f58'
  name 'ModelBoiler'
  homepage 'https://github.com/nodes-ios/ModelBoiler'

  app 'Model Boiler.app'
end
