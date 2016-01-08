cask 'near-lock' do
  version '3.0'
  sha256 'a8678d7f81993e9be2a26aacbe3b8ec65cc4ca6dbd53157022c6726d1abd24f8'

  url 'http://nearlock.me/downloads/nearlock.dmg'
  appcast 'http://nearlock.me/downloads/nearlock.xml',
          :sha256 => '507c855b8e0a829b2063e70d19da45c5cca34087dd30d1e2474663f433f5d6ef'
  name 'Near Lock'
  homepage 'http://nearlock.me/'
  license :gratis

  app 'Near Lock.app'
end
