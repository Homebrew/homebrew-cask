cask 'coderunner' do
  version '3.1'
  sha256 'c85ee95a52af5986a0279a8191feff3f0c7d9f86b0f8030779b48b6a33541bee'

  # coderunner.nyc3.cdn.digitaloceanspaces.com was verified as official when first introduced to the cask
  url " https://coderunner.nyc3.cdn.digitaloceanspaces.com/CodeRunner-#{version}.zip"
 
  appcast 'https://coderunnerapp.com/appcast.xml'
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  
  auto_updates true

  app 'CodeRunner.app'
end
