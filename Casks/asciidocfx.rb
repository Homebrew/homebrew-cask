cask 'asciidocfx' do
  version '1.5.5'
  sha256 '368756a759175ff5e0a321db8b5665928bcc5b18eadeba4a788ce76ff6ab3c75'

  # github.com/asciidocfx/AsciidocFX was verified as official when first introduced to the cask
  url "https://github.com/asciidocfx/AsciidocFX/releases/download/v#{version}/AsciidocFX_Mac.dmg"
  name 'AsciidocFX'
  homepage 'http://www.asciidocfx.com/'

  installer manual: 'AsciidocFX Installer.app'

  uninstall script: {
                      executable: "/Applications/AsciidocFX/AsciidocFX Uninstaller.app",
                    }
end
