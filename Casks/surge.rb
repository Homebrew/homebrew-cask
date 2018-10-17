cask 'surge' do
  version :latest
  sha256 :no_check

  url 'https://nssurge.com/mac/v3/Surge-latest.zip'
  name 'Surge'
  homepage 'https://nssurge.com/'

  app 'Surge 3.app'
end
