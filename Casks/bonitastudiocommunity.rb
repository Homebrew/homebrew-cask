cask 'bonitastudiocommunity' do
  version '7.7.1'
  sha256 '9f6679f9bdb1a3d853cd519e9eade72ac531faabfae92c38e8d9fe52dd832f12'

  # download.forge.ow2.org was verified as official when first introduced to the cask
  url "https://download.forge.ow2.org/bonita/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://www.bonitasoft.com/downloads'
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
