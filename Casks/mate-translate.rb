cask 'mate-translate' do
  version '6.0.2,1555331041'
  sha256 '71fe9c4285faf55da7ab0456a1c20f6426cb8561bef4b0102d7df281abc4c65e'

  # dl.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas/#{version.before_comma}/#{version.after_comma}/InstantTranslate-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas.xml'
  name 'Mate Translate'
  homepage 'https://twopeoplesoftware.com/mate'

  app 'Mate Translate.app'
end
