cask :v1 => 'brackets' do
  version '1.0'
  sha256 '526ec76ca1f36539a7fa7ae499095ab4b3e910f2ca202872210227419d2d0341'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'
  zap :delete => [
                  '~/Library/Application Support/Brackets',
                  '~/Library/Preferences/io.brackets.appshell.plist',
                 ]
end
