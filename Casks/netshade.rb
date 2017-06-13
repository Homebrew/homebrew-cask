cask 'netshade' do
  version '7.0.3'
  sha256 '5d6b2daec9d5cd19a3c14b6784f0138d20a3f9cc796b25a0b2940641c7e1478b'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://secure.raynersw.com/appcast.php',
          checkpoint: '495f1b5f37f6528781f7ce480e72fafe260c15e5dd19729a93b3fabc7968912a'
  name 'NetShade'
  homepage 'http://raynersw.com/netshade.php'

  app 'NetShade.app'
end
