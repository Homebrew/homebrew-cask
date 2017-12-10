cask 'snipaste' do
  version '1.16-beta'
  sha256 'f0f0618d9be190d7570a4633553cbc063177a7eb279e0c2a142afd7035e776e1'

  # bitbucket.org/liule/snipaste was verified as official when first introduced to the cask
  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-Mac-#{version}.tar.gz"
  name 'Snipaste'
  homepage 'https://www.snipaste.com/'

  auto_updates true

  app 'Snipaste.app'

  uninstall quit: 'com.Snipaste'

  zap trash: '~/Library/Preferences/com.Snipaste.plist'
end
