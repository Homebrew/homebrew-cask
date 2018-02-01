cask 'asciidocfx' do
  version '1.5.9'
  sha256 '5bd97c4dc9f3dc7d16d46245adab74d83bf5a83ae41b90ca68e0d3aa964caa6b'

  # github.com/asciidocfx/AsciidocFX was verified as official when first introduced to the cask
  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac.dmg"
  appcast 'https://github.com/asciidocfx/AsciidocFX/releases.atom',
          checkpoint: '032f9803edea520fe8b57d7a2caae6e0a6246c10fafee50aa7fecd31f1ee7ac6'
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
