cask 'angband' do
  version '4.1.3'
  sha256 'b196392e8607dcc3a10ce66649762131f0bf6fdf7c981fed25bf214c84ed3905'

  url "http://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast 'http://rephial.org/release/'
  name 'Angband'
  homepage 'http://rephial.org/'

  app 'Angband.app'
end
