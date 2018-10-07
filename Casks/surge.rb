cask 'surge' do
  version :latest
  sha256 :no_check

  url 'https://dl.nssurge.com/mac/Surge-latest.zip'
  name 'Surge'
  homepage 'https://nssurge.com/'

  app 'Surge.app'
end
