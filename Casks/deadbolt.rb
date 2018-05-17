cask 'deadbolt' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.goodman-wilson was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.goodman-wilson.deadbolt/deadbolt.dmg'
  name 'Deadbolt'
  homepage 'https://deadbolt.goodman-wilson.com/'

  app 'Deadbolt.app'
end
