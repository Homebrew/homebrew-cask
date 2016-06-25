cask 'emojify' do
  version :latest
  sha256 :no_check

  url "https://github.com/Haroenv/emojify-service/archive/#{version}.tar.gz"
  name 'Emojify Service'
  homepage 'https://github.com/Haroenv/emojify-service'
  license :apache

  service 'Emojify.workflow'
end
