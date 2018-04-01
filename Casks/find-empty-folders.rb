cask 'find-empty-folders' do
  version '1.1'
  sha256 '6eea5c0cde96b1d2297ccbd9c98391f6c76ef2076654871faf5e27030ca1e293'

  url 'http://files.tempel.org/FindEmptyFolders/FindEmptyFolders.zip'
  appcast 'http://www.tempel.org/FindEmptyFolders',
          checkpoint: '1a31e06ed66a98d31148727e2f46ecf39fda039f0f6d736d25e7d1a60b37e42b'
  name 'Find Empty Folders'
  homepage 'http://www.tempel.org/FindEmptyFolders'

  app 'Find Empty Folders.app'
end
