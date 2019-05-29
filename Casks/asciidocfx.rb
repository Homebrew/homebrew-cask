cask 'asciidocfx' do
  version '1.6.9'
  sha256 '2cb7492ace5fbe1a384954f7cc68fabf6d3b7f5dfd3f35cfe546a301869ea47f'

  # github.com/asciidocfx/AsciidocFX was verified as official when first introduced to the cask
  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac.dmg"
  appcast 'https://github.com/asciidocfx/AsciidocFX/releases.atom'
  name 'AsciidocFX'
  homepage 'https://www.asciidocfx.com/'

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
