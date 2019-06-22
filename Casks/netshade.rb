cask 'netshade' do
  version '8.1'
  sha256 '476e5361f06e848dfdb3563c358b98abe9d11d9cbf7fa360de6e53193d658941'

  url "https://secure.raynersw.com/downloads/NetShade-#{version.dots_to_hyphens}.app.zip"
  appcast 'https://www.raynersw.com/appcast.php'
  name 'NetShade'
  homepage 'https://secure.raynersw.com/netshade.php'

  depends_on macos: '>= :high_sierra'

  app 'NetShade.app'
end
