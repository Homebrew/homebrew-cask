cask 'quip' do
  version '5.5.29'
  sha256 '0ba91266df0e965b575fef5fcf903d664493dc2ca1a60c28074a63f4d75947b1'

  # quip-clients.com was verified as official when first introduced to the cask
  url "https://quip-clients.com/macosx_#{version}.dmg"
  appcast 'https://api.quip.com/-/sparkle-feed?manual=0'
  name 'Quip'
  homepage 'https://quip.com/'

  auto_updates true

  app 'Quip.app'
end
