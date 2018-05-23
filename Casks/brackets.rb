cask 'brackets' do
  version '1.12'
  sha256 '11805e056d01964c0a4226203db5e7bf55819294020c1a9194ed8e6e2fb60f7b'

  # github.com/adobe/brackets was verified as official when first introduced to the cask
  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  appcast 'https://github.com/adobe/brackets/releases.atom',
          checkpoint: 'b231daac3fbba80810f29cf89634545e7313e0a439b71157abc8f268246d5253'
  name 'Brackets'
  homepage 'http://brackets.io/'

  app 'Brackets.app'

  zap trash: [
               '~/Library/Application Support/Brackets',
               '~/Library/Preferences/io.brackets.appshell.plist',
             ]
end
