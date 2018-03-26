cask 'crunch' do
  version '1.0.1'
  sha256 'e5ddb785ffb7173e0a11e6813f3926da9f0dd85e99ed7b4188f86287f678bd87'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: '8bbb2f6218e2e4e2dff086970b8d2d58a946c27f668d01cbb5b9116f68737657'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'

  depends_on formula: [
                        'libpng',
                        'little-cms2',
                      ]

  app 'Crunch.app'
end
