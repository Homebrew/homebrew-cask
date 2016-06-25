cask 'emojify' do
  version '0.1.0'
  sha256 '2ca93bf5707dfa67e4be8f1f27384ac1cb0d2644154999c7904b5d8b303ba18c'

  url "https://github.com/Haroenv/emojify-service/archive/v#{version}.zip"
  appcast 'https://github.com/Haroenv/emojify-service/releases.atom',
          checkpoint: 'b53826c2bbf31c9ee4a668ebed4f370458e3d3f08fb2dc527242e4fff0f56d04'
  name 'Emojify Service'
  homepage 'https://github.com/Haroenv/emojify-service'
  license :apache

  service "emojify-service-#{version}/Emojify.workflow"
end
