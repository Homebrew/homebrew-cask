cask 'netshade' do
  version '8.2'
  sha256 'f75a83ec33582da7bef5f3affd0d893dc6e343436ede39451ff036fe5cfd44d8'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://www.raynersw.com/appcast.php'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  depends_on macos: '>= :high_sierra'

  app 'NetShade.app'
end
