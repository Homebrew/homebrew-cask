cask 'emercoin' do
  version '0.6.3'
  sha256 '9e6d125c19c206066d45ad0ac54adb361eaa031e50f551605b6918ef1c7305fc'

  # sourceforge.net/emercoin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/emercoin/emercoin-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/emercoin/rss',
          checkpoint: '8b2ecc18e7c7e58f58600f7fb1e89cde0fd49d0ca8f21cf6b56736294056b295'
  name 'Emercoin'
  homepage 'https://emercoin.com/'

  app 'Emercoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Emercoin-Qt.app", '0755'
  end
end
