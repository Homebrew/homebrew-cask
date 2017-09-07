cask 'apache-directory-studio' do
  version '2.0.0.v20161101-M12'
  sha256 '84b4ec5b529205d326d73f383430c41a2002f1fa3857fff8f93d76bfd0f28340'

  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast 'http://apache.mirror.serversaustralia.com.au/directory/studio/',
          checkpoint: '455c45a043e17bf557b58c9fcb4c50ca8a1054c88093087ed4fb2bdbf59f65c0'
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap delete: '~/.ApacheDirectoryStudio'
end
