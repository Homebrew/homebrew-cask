cask 'nicecast' do
  version '1.11.12'
  sha256 '2ef02a7f7ebca53fa04ca4bd2bdfea43051f4faf92ae00b3250c878855023141'

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10114',
          checkpoint: '27f3f694058494e971e7d283612e4fa33972479d5eccc2b87fe0bdc52ffbf984'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast/'

  app 'Nicecast.app'
end
