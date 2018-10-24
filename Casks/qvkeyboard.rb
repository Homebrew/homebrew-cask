cask 'qvkeyboard' do
  version '1.2.9'
  sha256 'd04ad811b5a76d8b1882eac5c51a65f28921a9396ac6ffa63de46acdda5ef0db'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/qvkeyboard/qvkeyboard/releases/download/#{version}/QVKeyboardClient.#{version}.dmg"
  appcast 'https://github.com/qvkeyboard/qvkeyboard/releases.atom'
  name 'QVKeyboardClient'
  homepage 'https://qvkeyboard.github.io/'

  app 'QVKeyboardClient.app'
end
