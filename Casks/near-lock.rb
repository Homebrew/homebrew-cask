cask :v1 => 'near-lock' do
  version :latest
  sha256 :no_check

  url 'http://nearlock.me/downloads/nearlock.dmg'
  name 'Near Lock'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          :sha256 => 'd576185dc8e8f6428a69b5fa003d67a2f2a83944a9c74b4557336c14e1d5ca95'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
