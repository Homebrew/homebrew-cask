cask 'apache-directory-studio' do
  version '2.0.0.v20170904-M13'
  sha256 '17df069735317034737a51439e463e61a1f8e283ea464e299ef023d68cc15dc3'

  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast 'http://apache.mirror.serversaustralia.com.au/directory/studio/',
          checkpoint: '7aae695e4e2fad067f3a4e5b4fe026c8d12eb39b9143901e70a17c3c4cf1398f'
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap delete: '~/.ApacheDirectoryStudio'
end
