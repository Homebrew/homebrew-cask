cask 'bonitastudiocommunity' do
  version '7.8.2'
  sha256 'dbc47e17c8ff4e9ae315420c97b7e27aedca2a4786adfd830ee07049d949dcf6'

  # release.ow2.org was verified as official when first introduced to the cask
  url "https://release.ow2.org/bonita/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://www.bonitasoft.com/downloads'
  name 'Bonita Studio Community Edition'
  homepage 'https://www.bonitasoft.com/downloads'

  installer script: {
                      executable: "#{staged_path}/BonitaStudioCommunity-#{version}.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall quit:   'org.bonitasoft.studio.product',
            delete: "/Applications/BonitaStudioCommunity-#{version}.app"

  zap trash: [
               '~/Library/Preferences/org.bonitasoft.studio.product.plist',
               '/Library/Caches/org.bonitasoft.studio.product',
             ]
end
