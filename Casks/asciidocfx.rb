cask 'asciidocfx' do
  version '1.6.0'
  sha256 'da3e1f7e141ba6caf41caeafc4caad5611dac40a173546c1f3e9b41924288970'

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
