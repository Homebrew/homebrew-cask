cask 'nicecast' do
  version '1.11.7'
  sha256 'b75fe78837d8edab0cf35f0f7e42418c7b9cb7cf2beaccfc519caca4be942310'

  # d2oxtzozd38ts8.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2oxtzozd38ts8.cloudfront.net/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10113&platform=osx',
          checkpoint: '4c5793276ba39f8b4e98c00e89e21e209e60fd4e4dd5c4b99f21ae7d01f4df0a'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
