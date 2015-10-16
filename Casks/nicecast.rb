cask :v1 => 'nicecast' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  name 'Nicecast'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast',
          :sha256 => '8f6d50cbc369b27a014c2393eaf9f9c7fb35e5467adba4233f5aead1b8dfaeca'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
