cask 'nicecast' do
  version '1.11.7'
  sha256 'c840bcb98574fd919eae79acd97f89f0a1eac489313edf940f3efce61cfab908'

  url 'https://www.rogueamoeba.com/nicecast/download.php'
  appcast 'https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&bundleid=com.rogueamoeba.Nicecast&system=10113&platform=osx',
          checkpoint: '4c5793276ba39f8b4e98c00e89e21e209e60fd4e4dd5c4b99f21ae7d01f4df0a'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
