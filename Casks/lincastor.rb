cask :v1 => 'lincastor' do
  version :latest
  sha256 :no_check

  # dropbox is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/LinCastor.zip'
  homepage 'http://onflapp.wordpress.com/lincastor/'
  license :unknown

  app 'LinCastor.app'
end
