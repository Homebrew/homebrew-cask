cask 'asciidocfx' do
  version '1.6.8'
  sha256 '297d4efa5d1624ea7cc889053081dbc4780f0160938f7111107eade2ac5ec31d'

  # github.com/asciidocfx/AsciidocFX was verified as official when first introduced to the cask
  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac.dmg"
  appcast 'https://github.com/asciidocfx/AsciidocFX/releases.atom'
  name 'AsciidocFX'
  homepage 'http://www.asciidocfx.com/'

  installer script: {
                      executable: 'AsciidocFX Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: '/Applications/AsciidocFX/AsciidocFX Uninstaller.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                      sudo:       true,
                    }
end
