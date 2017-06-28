cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.2'
  sha256 '3bf80f88d0ffa08a96f4747453f534f4ad058a6a76e2348bad7c85d07a25c6c1'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: 'ac1d98b11528f0f3417ed8e84ce258c06c726874e6b35ae2ca882a60969c5f7d'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
