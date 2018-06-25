cask 'crunch' do
  version '3.0.1'
  sha256 'af380230c6d83a097a9e537bf5f01136190294e6cb41d44da1b604eec7915766'

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
