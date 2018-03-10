cask 'bonitastudiocommunity' do
  version '7.6.3'
  sha256 '9883dcd04d939cacc21bfcbb74e9dcde437c8e4eb94c977fba1f1e17f7665dc0'

  # download.forge.ow2.org was verified as official when first introduced to the cask
  url "https://download.forge.ow2.org/bonita/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://documentation.bonitasoft.com/release-notes',
          checkpoint: '04b8fbc92e8cb1cd4c029bf1349cf0b06f5fa8738c145030cd9a1d3c00c02b22'
  name 'Bonita Studio Community Edition'
  homepage 'https://www.bonitasoft.com/downloads'

  installer script: {
                      executable: "#{staged_path}/BonitaStudioCommunity-#{version}-osx.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall quit:   'org.bonitasoft.studio.product',
            delete: "/Applications/BonitaStudioCommunity-#{version}.app"

  zap trash: [
               '~/Library/Preferences/org.bonitasoft.studio.product.plist',
               '/Library/Caches/org.bonitasoft.studio.product',
             ]
end
