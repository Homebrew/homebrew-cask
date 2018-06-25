cask 'deadbolt' do
  version '1.2,15:1469916188'
  sha256 'b6b57135032711d04a566d4068ddef65c7641d11e3a0d98fe72d6639272959cc'

  # dl.devmate.com/com.goodman-wilson.deadbolt was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.goodman-wilson.deadbolt/#{version.after_comma.before_colon}/#{version.after_colon}/deadbolt-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.goodman-wilson.deadbolt.xml'
  name 'Deadbolt'
  homepage 'https://deadbolt.goodman-wilson.com/'

  app 'Deadbolt.app'
end
