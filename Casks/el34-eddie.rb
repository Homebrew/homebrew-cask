cask 'el34-eddie' do
  version '3.3.2'
  sha256 '7326392b09e09e46178be65f750b892b7e78b150d1f2e4ed13060da0f9f2037b'

  # el34software.com was verified as official when first introduced to the cask
  url "http://el34software.com/latest/Eddie%20OSX%20#{version}.zip"
  appcast 'http://www.el34.com/EddieReleaseNotes.html',
          checkpoint: 'fe11f93fe9396aba91bd6c8159a61e8223ab35080557ac3ceff8ef0b68dc79e5'
  name 'Eddie'
  homepage 'http://www.el34.com/'

  app 'Eddie/Eddie.app'
  binary 'Eddie/tellEddie'
end
