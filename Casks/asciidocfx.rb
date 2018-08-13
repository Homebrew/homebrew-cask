cask 'asciidocfx' do
  version '1.6.5'
  sha256 'f73e58f518340dfce489393e3011f987aed9faaff045946cf61ca56f44120fb9'

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
