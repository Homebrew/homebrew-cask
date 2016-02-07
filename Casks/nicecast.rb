cask 'nicecast' do
  version '1.9.7'
  sha256 '4bc25f67f9d6dcd832846e6c563edfe9763b8d1fc57e50961049d6889219d47d'

  url "http://rogueamoeba.com/legacy/downloads/Nicecast-#{version.no_dots}.zip"
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast',
          checkpoint: '8f6d50cbc369b27a014c2393eaf9f9c7fb35e5467adba4233f5aead1b8dfaeca'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
