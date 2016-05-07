cask 'nicecast' do
  version '1.11.8'
  sha256 'd291e4cb0d3adf9e8208a91e53729d4fd364dc5e616382b2b8d87580dd241329'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: '244c8be02b296cf3ddf68d2b50102d69bb1a9ff63c5fa38850e8ec84261a271e'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
