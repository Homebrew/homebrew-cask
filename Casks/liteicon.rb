cask 'liteicon' do
  version '3.7'
  sha256 'fd04d09adaa8ef300358a3f42651d35a8107bb228677579415e4195ceb900af4'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          checkpoint: 'f89d570d5380ba470a6db1d66b05ba2d4b37c263910fca1c69500a810e220cd4'
  name 'LiteIcon'
  homepage 'https://www.freemacsoft.net/liteicon/'

  app 'LiteIcon.app'

  zap delete: '~/Library/Preferences/net.freemacsoft.LiteIcon.plist'
end
