cask 'leanote' do
  version '2.4'
  sha256 'ee7366ce073f9e86e38481174b2686d49124e646be15a66c792b8a64fe92efbc'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/',
          checkpoint: '2e1dd70041eaea45e7505ff9d5345bf3f635098e5952d825c3b20a3ddf43bc9b'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
