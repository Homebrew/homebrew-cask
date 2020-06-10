cask 'mcgimp' do
  version '2.10.18'
  sha256 'fe79023d1ca11b645c5053ae776ea27f903b799c57f05ac4cc9ae56521972631'

  url "https://www.partha.com/downloads/GIMP/McGimp-#{version}.app.zip"
  name 'McGimp'
  homepage 'https://www.partha.com/'

  app "McGimp-#{version}.app"
end
