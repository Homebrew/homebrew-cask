cask 'emercoin' do
  version '0.6.1'
  sha256 '45f297e46923f6827f1a07c01968749e08560ccb2c176b72f054b7ce76d0eb6a'

  # sourceforge.net/emercoin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/emercoin/emercoin-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/emercoin/rss',
          checkpoint: '8bd6befa3375c4bf3313861ccd0aaa85b67a2ed43e796ff264b68497cd5bbd35'
  name 'Emercoin'
  homepage 'http://emercoin.com/'

  app 'Emercoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Emercoin-Qt.app", '0755'
  end
end
