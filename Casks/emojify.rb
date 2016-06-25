cask 'emojify' do
  version :latest
  sha256 :no_check

  url "https://github.com/Haroenv/emojify-service/archive/#{version}.tar.gz"
  appcast 'https://github.com/Haroenv/emojify-service/releases.atom',
          checkpoint: 'b53826c2bbf31c9ee4a668ebed4f370458e3d3f08fb2dc527242e4fff0f56d04'
  name 'Emojify Service'
  homepage 'https://github.com/Haroenv/emojify-service'
  license :apache

  service 'Emojify.workflow'
end
