cask 'emercoin' do
  version '0.6.3.1'
  sha256 'd7fea4653c855f22acd78453e2b109a3ceb7c6b5c2579447aa2c70abfba1dc88'

  # sourceforge.net/emercoin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/emercoin/emercoin-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/emercoin/rss',
          checkpoint: '091d13be309ff27d4fa954ab309d13268adaedd5178e25d04f10da16a2c501c2'
  name 'Emercoin'
  homepage 'https://emercoin.com/'

  app 'Emercoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Emercoin-Qt.app", '0755'
  end
end
