class Brackets < Cask
  version '1.0'
  sha256 '3619f01dddc55f47be87306909b7264cbdad9fb43be8c88661bec0a087b0f8a6'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'
  zap :delete => [
                  '~/Library/Application Support/Brackets',
                  '~/Library/Preferences/io.brackets.appshell.plist',
                 ]
end
