cask 'apache-directory-studio' do
  version '2.0.0.v20161101-M12'
  sha256 '84b4ec5b529205d326d73f383430c41a2002f1fa3857fff8f93d76bfd0f28340'

  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast 'http://apache.mirror.serversaustralia.com.au/directory/studio/',
          checkpoint: '4ea9e27adef6c8b151664210452725d6f78d280ff0067d264207be9d91de8361'
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap delete: '~/.ApacheDirectoryStudio'
end
