cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.4'
  sha256 '01dd5ca5fbc412ba8a515200d6f50e7b27a1e696257af0ac87e293758e8e55bd'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://desktop.icons8.com/updates/mac/icons8_cast.xml',
          checkpoint: '9b997f3161fb2a6b83d4cd3098c0798587971e358161d3b8b87543a36d78a48f'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'
end
