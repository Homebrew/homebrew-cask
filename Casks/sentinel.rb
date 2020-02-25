cask 'sentinel' do
  version '0.14.4'
  sha256 '7beeb90c32984d6d133ffed53f1e8c391485b30df3683dfa4de4b67c40fceeba'

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast 'https://docs.hashicorp.com/sentinel/downloads/'
  name 'Sentinel'
  homepage 'https://docs.hashicorp.com/sentinel/'

  binary 'sentinel'
end
