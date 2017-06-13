cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6'
  sha256 'aec06e37c9a028e73a959f843e71bde611a26a8b1db601a3ae98ab72786eaa2d'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://maxcdn.icons8.com/download/icons8_cast.xml',
          checkpoint: 'ac1d98b11528f0f3417ed8e84ce258c06c726874e6b35ae2ca882a60969c5f7d'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
