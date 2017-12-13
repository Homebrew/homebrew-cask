cask 'studio-3t' do
  version '5.7.1'
  sha256 'ec95ae2909b02ddf6d68a2b879b53c7b4cca881cf5542291b453c933844bb70b'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '94402edb1ab68e27aa024252f7d11f724bf46ece57c82adb855fecbe7c9c515b'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
