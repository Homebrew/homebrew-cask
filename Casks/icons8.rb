cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.2'
  sha256 '3bf80f88d0ffa08a96f4747453f534f4ad058a6a76e2348bad7c85d07a25c6c1'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://desktop.icons8.com/updates/mac/icons8_cast.xml',
          checkpoint: '9688fb2b390f16363062bc105b7bdbf88840a771d3d4070d000c673f74d22c13'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
