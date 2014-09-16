class Brackets < Cask
  version '0.43'
  sha256 '582b6a1425b9b4574b7ad5b5e797899e6e8bacc47560f71203549fe5a1863aa9'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  homepage 'http://brackets.io'

  app 'Brackets.app'
  zap :files => [
                 '~/Library/Application Support/Brackets',
                 '~/Library/Preferences/io.brackets.appshell.plist',
                ]
end
