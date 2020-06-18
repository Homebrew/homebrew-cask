cask 'sentinel' do
  version '0.15.5'
  sha256 '700e979d8f047bff28445b4a6037dbffde7bf01774ef48b6b2e959f9ffbdfab2'

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast 'https://docs.hashicorp.com/sentinel/downloads/'
  name 'Sentinel'
  homepage 'https://docs.hashicorp.com/sentinel/'

  binary 'sentinel'
end
