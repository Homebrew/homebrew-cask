cask 'quip' do
  version '5.4.76'
  sha256 '8ac98e706289c8a1936aaa302af10370ed80e2164cb585f162c55229d7f9f9de'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
