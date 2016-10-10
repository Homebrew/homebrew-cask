cask 'brackets' do
  version '1.7'
  sha256 '1631dd2603f69488171d29776fa6fad09266a6d22b4263b59ef7d1bc39d64ea8'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: '065e17a16458bf2a795e1933bd59dd47c87a43b31989a31d1fcd3e3b4ddff8d8'
  name 'Brackets'
  homepage 'http://brackets.io'

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
