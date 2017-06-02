cask 'el34-eddie' do
  version '3.3.1'
  sha256 'f9fe7cfd6b4d1fa8c6d6c89a9bd527525908979dc65ae96bae91e456fd1fae2b'

  # el34software.com was verified as official when first introduced to the cask
  url "http://el34software.com/latest/Eddie%20OSX%20#{version}.zip"
  appcast 'http://www.el34.com/EddieReleaseNotes.html',
          checkpoint: 'be1951aa42fadf6a2c3c7088a63e1c211ab3a2c0fc5078b53309bfcc1fd275b7'
  name 'Eddie'
  homepage 'http://www.el34.com/'

  app 'Eddie/Eddie.app'
  binary 'Eddie/tellEddie'
end
