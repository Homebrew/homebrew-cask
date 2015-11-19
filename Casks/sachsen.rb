cask :v1 => 'sachsen' do
  version :latest
  sha256 :no_check

  # devmate.com is the official download host per the vendor homepage
  url 'http://dl.devmate.com/eu.lauterbach.Sachsen/Sachsen.zip'
  name 'Sachsen'
  homepage 'http://www.ccll1.net/sachsen/'
  license :commercial

  app 'Sachsen.app'
end
