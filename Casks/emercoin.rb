cask 'emercoin' do
  version '0.7.1'
  sha256 '27b6f71339667e8e00c01dcd51c4ad1f1d1a0ca53e7ec53bb4714b29f3f610ec'

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
