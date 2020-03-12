cask 'sentinel' do
  version '0.15.1'
  sha256 '235205161ed2ab38e7795de7d709f49755faf98ec5c9d161dbd4a46477119c27'

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  appcast 'https://docs.hashicorp.com/sentinel/downloads/'
  name 'Sentinel'
  homepage 'https://docs.hashicorp.com/sentinel/'

  binary 'sentinel'
end
