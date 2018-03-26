cask 'crunch' do
  version '1.0.0'
  sha256 'd026dd0ad75327b9cdc7c26d7d48f69be195b5f339abc28c8446f8cae58ba8cc'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: '163804ec141e7f909a6707cf74f3bd0b0a07944e5c4e18fd4fecde781dfad0b0'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
