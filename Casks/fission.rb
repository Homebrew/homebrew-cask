cask 'fission' do
  version '1.6.8'
  sha256 '99e41fd6a8cd5e729ebb5098a80fc9d8dcd7d7ed3a6f2b9d2b6347af2470ab20'

  url "http://rogueamoeba.com/legacy/downloads/Fission-#{version.no_dots}.zip"
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Fission',
          checkpoint: '56a9412e5dffad3e7c87fd2d32c70d7f1a28fa1cc851a6ad8c462bdab3614088'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'
  license :commercial

  app 'Fission.app'
end
