cask 'sentinel' do
  version '0.14.3'
  sha256 '86feb4cd422546e6d50d3eb55b01e995eff36d7451153a0d9840cb8de05ad801'

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast 'https://docs.hashicorp.com/sentinel/downloads/'
  name 'Sentinel'
  homepage 'https://docs.hashicorp.com/sentinel/'

  binary 'sentinel'
end
