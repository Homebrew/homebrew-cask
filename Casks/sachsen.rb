cask 'sachsen' do
  version :latest
  sha256 :no_check

  # devmate.com/eu.lauterbach.Sachsen was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/eu.lauterbach.Sachsen/Sachsen.zip'
  name 'Sachsen'
  homepage 'http://www.ccll1.net/sachsen/'

  app 'Sachsen.app'
end
