cask 'apache-directory-studio' do
  version '2.0.0.v20161101-M12'
  sha256 '84b4ec5b529205d326d73f383430c41a2002f1fa3857fff8f93d76bfd0f28340'

  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast 'http://apache.mirror.serversaustralia.com.au/directory/studio/',
          checkpoint: '54a858478ec43009fd6b19b98c372310f1389e5775b8f2307582e4d0eed9d681'
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap delete: '~/.ApacheDirectoryStudio'
end
