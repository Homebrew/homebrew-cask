cask 'sentinel' do
  version '0.14.2'
  sha256 'aea6a6e915d0f8b29579c48dade284e446e83f49705cb2441bd7b40b411d818f'

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast 'https://docs.hashicorp.com/sentinel/downloads/'
  name 'Sentinel'
  homepage 'https://docs.hashicorp.com/sentinel/'

  binary 'sentinel'
end
