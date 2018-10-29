cask 'mcgimp' do
  version '2.10.6'
  sha256 '0776c1fd3a3c9ab137926465119275cd84f99ad0407ff1ff63bd21e479fdaa84'

  url "https://www.partha.com/downloads/McGimp-#{version}.app.zip"
  name 'McGimp'
  homepage 'https://www.partha.com/'

  app "McGimp-#{version}.app"
end
