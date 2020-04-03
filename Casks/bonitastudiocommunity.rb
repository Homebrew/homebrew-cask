cask 'bonitastudiocommunity' do
  version '7.10.3'
  sha256 '1172464d3718f7d24d7e5ae6b041d2f6832487193b934472e95a568daf218e9d'

  # release.ow2.org was verified as official when first introduced to the cask
  url "https://release.ow2.org/bonita/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://www.bonitasoft.com/downloads',
          configuration: version.major_minor
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
