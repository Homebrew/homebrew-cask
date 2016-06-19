cask 'nicecast' do
  version '1.11.9'
  sha256 '086844c526a15592ac4502347ca459b9d27ecf64e24882c4dcc78effbb43d104'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: 'e6532d6f30bf960696e21859e36d983e6772a1646bd889234fce71bcf3ec881f'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
