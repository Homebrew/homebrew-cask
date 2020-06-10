cask 'sentinel' do
  version '0.15.2'
  sha256 '76c30e1d8bc3955eda794d6b37e0174d016ad876bd8a96ba38e274b8f310bd7b'

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast 'https://docs.hashicorp.com/sentinel/downloads/'
  name 'Sentinel'
  homepage 'https://docs.hashicorp.com/sentinel/'

  binary 'sentinel'
end
