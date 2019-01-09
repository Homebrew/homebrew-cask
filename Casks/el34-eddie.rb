cask 'el34-eddie' do
  version '3.3.4'
  sha256 '434ca7140e4fcdaf19b03725ec4b6b375b269451a7f48b283e7e257b6ee54dd3'

  # el34software.com was verified as official when first introduced to the cask
  url "https://el34software.com/latest/Eddie%20OSX%20#{version}.zip"
  appcast 'http://www.el34.com/EddieReleaseNotes.html'
  name 'Eddie'
  homepage 'http://www.el34.com/'

  app 'Eddie/Eddie.app'
  binary 'Eddie/tellEddie'
end
