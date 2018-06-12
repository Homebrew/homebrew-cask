cask 'crunch' do
  version '3.0.0'
  sha256 '601c1c7383a5fe48f95a0ccd3e3a5c1cad19467f20408d2d14c25c1b461270b1'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
