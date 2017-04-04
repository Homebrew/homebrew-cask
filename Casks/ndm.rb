cask 'ndm' do
  version '1.1.1'
  sha256 '561d370450f39713e29e42c3971e02c44f071de21402ff8533706afdda38302b'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '5eb0a91feca304dc4980ed708a2db3096dfd822b4c5ebc630222b4293bb5b1af'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'

  zap delete: [
                '~/Library/Application Support/ndm',
                '~/Library/Preferences/net.720kb.ndm.helper.plist',
                '~/Library/Preferences/net.720kb.ndm.plist',
                '~/Library/Saved Application State/net.720kb.ndm.savedState',
              ]
end
