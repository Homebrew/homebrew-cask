cask 'loadmytracks' do
  version '1.4.7,099'
  sha256 '5dcc85fd51e89a3792f0aad093bbfbac036e5c0a82a5d758b8352e6905ecfff2'

  # cluetrust.com is the official download host per the product homepage
  url "http://www.cluetrust.com/Downloads/LoadMyTracks_#{version.after_comma}.dmg"
  appcast 'https://www.cluetrust.com/AppCasts/LoadMyTracks.xml',
          checkpoint: 'bef86b055707d407eb2835db82e07d615968d344450417515cae5719fd97cefd'
  name 'LoadMyTracks'
  homepage 'http://www.loadmytracks.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LoadMyTracks.app'
end
