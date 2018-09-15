cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.5'
  sha256 '1775c821b5d90d52540da4cb52b4618b4732d11509c84feaf3978f3be78753dc'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://desktop.icons8.com/updates/mac/icons8_cast.xml'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
