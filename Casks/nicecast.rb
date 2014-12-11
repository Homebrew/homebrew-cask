cask :v1 => 'nicecast' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/nicecast/download/Nicecast.zip'
  homepage 'http://rogueamoeba.com/nicecast'
  license :commercial

  app 'Nicecast.app'
end
