cask 'ndm' do
  version '1.1.1'
  sha256 '561d370450f39713e29e42c3971e02c44f071de21402ff8533706afdda38302b'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '8c1048c46c654a57cac40d4d076070577f15f3a263690909c07dafe236858c78'
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
