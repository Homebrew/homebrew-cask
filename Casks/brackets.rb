cask 'brackets' do
  version '1.12'
  sha256 'a084a21754c5fa45d47e177be4d9820996098ac7b20a1ba8fb45a8799355d7d4'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: '000e74860d02ed23d5ae0466e84567e48be2bf6ba0b12190d6b0210a6cb05b12'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap trash: [
               '~/Library/Application Support/Brackets',
               '~/Library/Preferences/io.brackets.appshell.plist',
             ]
end
