cask 'apache-directory-studio' do
  version '2.0.0.v20170904-M13'
  sha256 '17df069735317034737a51439e463e61a1f8e283ea464e299ef023d68cc15dc3'

  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast 'http://apache.mirror.serversaustralia.com.au/directory/studio/'
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap trash: '~/.ApacheDirectoryStudio'
end
