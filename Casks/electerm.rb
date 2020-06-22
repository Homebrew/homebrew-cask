cask 'electerm' do
  version '1.3.42'
  sha256 '0f8a1eebc983e7fae3ae4b40731832b977e00406910f1afe36a33166ee0f1d39'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
