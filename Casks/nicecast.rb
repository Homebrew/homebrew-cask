cask 'nicecast' do
  version '1.11.11'
  sha256 'b0af3d1d6b6dbbf055af2155a39d222afb6a6eed6eda040148e493b3e6acab3b'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: 'cd857805b6f1290a2b1777b0b8e35d8876879323446e5a20fbd013160cc450a7'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'

  app 'Nicecast.app'
end
