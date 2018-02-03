cask 'bonitastudiocommunity' do
  version '7.6.2'
  sha256 '31fdb99aab15e2edb9127050427f5fb4126faeaca755761466c9a97065f01e45'

  # download.forge.ow2.org was verified as official when first introduced to the cask
  url "https://download.forge.ow2.org/bonita/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://documentation.bonitasoft.com///?page=release-notes',
          checkpoint: '0e9f27a8d871eabfb32def4978aecf0fa284f32fec85951bc19600b82d0e688d'
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
