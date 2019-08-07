cask 'focus-booster' do
  version '2.2.0'
  sha256 'a58f376eaa0588893bf64555699408af5cf0ab6c3f3a15558430c0c3ec1e8a1a'

  # dcwy7j973b6zk.cloudfront.net/downloads/stable was verified as official when first introduced to the cask
  url "https://dcwy7j973b6zk.cloudfront.net/downloads/stable/focusbooster#{version}.dmg"
  appcast 'https://www.focusboosterapp.com/download'
  name 'Focus Booster'
  homepage 'https://www.focusboosterapp.com/'

  app 'focus booster.app'
end
