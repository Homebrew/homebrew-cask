cask 'nicecast' do
  version '1.11.10'
  sha256 '28d4911f6df54d3a4342c55c302be3420f71282b43f79151ea440523172f0568'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: 'e4bee462f44fd5cd208ffa6f32cc88043e956f33aa938123bb5c200eecd47cda'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
