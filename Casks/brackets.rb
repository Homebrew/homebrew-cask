cask 'brackets' do
  version '1.8'
  sha256 '37a67ad7b8d87b878e672e0c14aa0d671c8dea59af2518b0119ae4f3498d2e89'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: 'f6eea3ff7a857c6c4039ac24662a9eab1de15dcc0464f1d33f8ac35efdaa4121'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap delete: [
                '~/Library/Application Support/Brackets',
                '~/Library/Preferences/io.brackets.appshell.plist',
              ]
end
