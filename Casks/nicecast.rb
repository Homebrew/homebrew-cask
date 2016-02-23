cask 'nicecast' do
  version '1.11.7'
  sha256 'c840bcb98574fd919eae79acd97f89f0a1eac489313edf940f3efce61cfab908'

  url 'https://www.rogueamoeba.com/nicecast/download.php'
  name 'Nicecast'
  homepage 'https://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
