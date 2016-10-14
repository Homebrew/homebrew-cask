cask 'folio' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/folioformac.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/folioformac.com/downloads/Folio.zip'
  name 'Folio'
  homepage 'http://folioformac.com'

  app 'Folio.app'

  zap delete: '~/Library/Application Support/co.ysberg.Folio'
end
