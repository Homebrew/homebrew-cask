cask 'find-empty-folders' do
  version '1.1'
  sha256 '6eea5c0cde96b1d2297ccbd9c98391f6c76ef2076654871faf5e27030ca1e293'

  url 'http://files.tempel.org/FindEmptyFolders/FindEmptyFolders.zip'
  name 'Find Empty Folders'
  homepage 'http://www.tempel.org/FindEmptyFolders'
  license :gratis

  depends_on macos: '>= :snow_leopard'

  app 'Find Empty Folders.app'
end
