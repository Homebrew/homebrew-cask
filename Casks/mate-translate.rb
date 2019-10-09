cask 'mate-translate' do
  version '6.1.0,1570524082'
  sha256 '3a346f7fe69726152863b639ea83f72720ab6dff2d1a14fb0b1549595ac4f02f'

  # dl.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas/#{version.before_comma}/#{version.after_comma}/InstantTranslate-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas.xml'
  name 'Mate Translate'
  homepage 'https://twopeoplesoftware.com/mate'

  app 'Mate Translate.app'
end
