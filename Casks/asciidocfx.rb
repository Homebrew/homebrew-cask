cask 'asciidocfx' do
  version '1.6.6'
  sha256 'af1d4fee70d459b371d2e5e66936d8f3d67f3ca652d1dce2c4cdc856aafadcce'

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
