cask :v1 => 'brackets' do
  version '1.1'
  sha256 'f958a50fe0d656b29b4629e159fcf584e03e8616a6349a55b19e39338bef8cda'

  url "https://github.com/adobe/brackets/releases/download/release-#{version}/Brackets.Release.#{version}.dmg"
  homepage 'http://brackets.io'
  license :mit

  app 'Brackets.app'

  zap :delete => [
                  '~/Library/Application Support/Brackets',
                  '~/Library/Preferences/io.brackets.appshell.plist',
                 ]
end
