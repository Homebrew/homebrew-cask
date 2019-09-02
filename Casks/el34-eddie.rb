cask 'el34-eddie' do
  version '3.4'
  sha256 'b4f7d00ca86c20abab9861052c0d182fc08a9a917d03ab64e4afd348db6aba6b'

  # el34software.com was verified as official when first introduced to the cask
  url "https://el34software.com/latest/Eddie%20OSX%20#{version}.zip"
  appcast 'http://www.el34.com/EddieReleaseNotes.html'
  name 'Eddie'
  homepage 'http://www.el34.com/'

  app 'Eddie/Eddie.app'
  binary 'Eddie/tellEddie'
end
