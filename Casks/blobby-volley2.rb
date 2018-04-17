cask 'blobby-volley2' do
  version '1.0'
  sha256 '6e2b1381e32607e1f452920b1fbfcb5f2393bc13e48fcc58cbcd26b8e9e70117'

  url "https://downloads.sourceforge.net/blobby/blobby2-macosx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/blobby/rss',
          checkpoint: '80837a8dc6e49d854570d7b5a9bb52c8db011838560f31ebe7c4782f6ca9a682'
  name 'Blobby Volley 2'
  homepage 'http://blobby.sourceforge.net/'

  app 'Blobby Volley 2.app'
end
