cask 'appdelete' do
  version '4.2.5'
  sha256 'a41a80cf4954966f800ce0644a0524cee79ba0261fd003e265b715e5b8a789db'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast 'http://www.reggieashworth.com/AD4Appcast.xml',
          checkpoint: '39ea97a1b76ee84ee17d02593e2008c58a50456ed3539ee28523e78c1e3e0323'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'
  license :commercial

  app 'AppDelete.app'
end
