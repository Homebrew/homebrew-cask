cask 'mate-translate' do
  version '6.1.1,1570627713'
  sha256 '05c2446f4bdd2d9363a4846ac019168dfa7ce476ca93edd08fc54a7d44d5d203'

  # dl.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas/#{version.before_comma}/#{version.after_comma}/InstantTranslate-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.twopeoplesoftware.InstantTranslate-nomas.xml'
  name 'Mate Translate'
  homepage 'https://twopeoplesoftware.com/mate'

  app 'Mate Translate.app'
end
