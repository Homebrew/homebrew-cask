cask 'bonitastudiocommunity' do
  version '7.6.0'
  sha256 'bb5a12a233ca7f0ede813070fedf34ecd3343c16dfae0f255f4707da130dba32'

  # download.forge.ow2.org was verified as official when first introduced to the cask
  url "https://download.forge.ow2.org/bonita/BonitaStudioCommunity-#{version}-x86_64.dmg"
  appcast 'https://documentation.bonitasoft.com///?page=release-notes',
          checkpoint: 'a66974da63b8e9383a454678b31a65a9008ce0ca0525949ce26cc9a1e884d075'
  name 'Bonita Studio Community Edition'
  homepage 'https://www.bonitasoft.com/downloads'

  installer script: {
                      executable: "#{staged_path}/BonitaStudioCommunity-#{version}-osx.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall quit:   'org.bonitasoft.studio.product',
            delete: '/Applications/BonitaStudioCommunity.app'

  zap trash: [
               '~/Library/Preferences/org.bonitasoft.studio.product.plist',
               '/Library/Caches/org.bonitasoft.studio.product',
             ]
end
