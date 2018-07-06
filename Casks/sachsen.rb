cask 'sachsen' do
  version '1.0.6,326:1441808540'
  sha256 '49fcd6e3fe4486738ef5d2180e7fd678df91704c21c0860cb4794650b89027b3'

  # devmate.com/eu.lauterbach.Sachsen was verified as official when first introduced to the cask
  url "https://dl.devmate.com/eu.lauterbach.Sachsen/#{version.after_comma.before_colon}/#{version.after_colon}/Sachsen-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/eu.lauterbach.Sachsen.xml'
  name 'Sachsen'
  homepage 'http://www.ccll1.net/sachsen/'

  app 'Sachsen.app'
end
