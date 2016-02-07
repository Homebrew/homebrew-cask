cask 'near-lock' do
  version '3.0'
  sha256 'a8678d7f81993e9be2a26aacbe3b8ec65cc4ca6dbd53157022c6726d1abd24f8'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          checkpoint: '2d332a32b2aec54b70dda529d16f128aedabc2cb2b721a0d48254d08631472b9'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
