cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.4'
  sha256 '01dd5ca5fbc412ba8a515200d6f50e7b27a1e696257af0ac87e293758e8e55bd'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://desktop.icons8.com/updates/mac/icons8_cast.xml'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
