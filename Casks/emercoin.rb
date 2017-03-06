cask 'emercoin' do
  version '0.6.0'
  sha256 'c95d85ccb6bad6f60447ee882cc2d2b77751b43117ddf86ed0b9b7c00e4d95eb'

  # sourceforge.net/emercoin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/emercoin/emercoin-#{version}-osx.dmg"
  appcast 'https://sourceforge.net/projects/emercoin/rss',
          checkpoint: 'd33ff85a688ba6116e832f0ac590a51b676e9713e16f1a58977bfb70b2e78506'
  name 'Emercoin'
  homepage 'http://emercoin.com/'

  app 'Emercoin-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Emercoin-Qt.app", '0755'
  end
end
