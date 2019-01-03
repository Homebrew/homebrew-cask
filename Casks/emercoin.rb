cask 'emercoin' do
  version '0.7.2'
  sha256 'c7e21b3aad29d7999a978b40f5244b7fc6099a9aa9b91abe8037f5152b628b06'

  # sourceforge.net/emercoin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/emercoin/emercoin-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/emercoin/rss'
  name 'Emercoin'
  homepage 'https://emercoin.com/'

  app 'Emercoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Emercoin-Qt.app", '0755'
  end
end
