cask 'mate-translate' do
  version '6.2.0'
  sha256 'af3e6543d3206e91e5ed16eac9d6cad49d02f4a1517f5eb56cbd3ab8a9992e94'

  # gikken.co/mate/ was verified as official when first introduced to the cask
  url 'https://gikken.co/mate/MateTranslate.zip'
  appcast 'https://gikken.co/mate/appcast.xml'
  name 'Mate Translate'
  homepage 'https://twopeoplesoftware.com/mate'

  app 'Mate Translate.app'
end
