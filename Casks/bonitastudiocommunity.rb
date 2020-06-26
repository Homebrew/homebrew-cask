cask 'bonitastudiocommunity' do
  version '7.11.0'
  sha256 '94e6888f8f91c492ee75671ebc84208fe9d16d2fc24403ab5b131ad1df7a21b0'

  # github.com/bonitasoft/bonita-platform-releases was verified as official when first introduced to the cask
  url "https://github.com/bonitasoft/bonita-platform-releases/releases/download/#{version}/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://www.bonitasoft.com/downloads',
          must_contain: version.major_minor
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
