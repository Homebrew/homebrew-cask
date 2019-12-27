cask 'lastpass' do
  version '4.39.0'
  sha256 '82b1ff3d316fc71f10c225a6006bdc704d10bdb9db952aee6e8e9c919f3ec684'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
