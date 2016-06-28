cask 'emojify' do
  version '0.1.1'
  sha256 '780635f2bbc54ce7c8d61d35fbdae3a064ec6e120f88afaeaa2e2b647dcb02ab'

  url "https://github.com/Haroenv/emojify-service/archive/v#{version}.zip"
  appcast 'https://github.com/Haroenv/emojify-service/releases.atom',
          checkpoint: 'b53826c2bbf31c9ee4a668ebed4f370458e3d3f08fb2dc527242e4fff0f56d04'
  name 'Emojify Service'
  homepage 'https://github.com/Haroenv/emojify-service'
  license :apache

  service "emojify-service-#{version}/Emojify.workflow"
end
