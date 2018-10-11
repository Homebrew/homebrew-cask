cask 'apache-directory-studio' do
  version '2.0.0.v20180908-M14'
  sha256 '845392529c86e52697c1edac1f0603261324ff2a649e697dbdf566ee5f5f8e5e'

  url "https://www.apache.org/dyn/closer.cgi?path=/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.dmg"
  appcast 'http://apache.mirror.serversaustralia.com.au/directory/studio/'
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap trash: '~/.ApacheDirectoryStudio'

  caveats do
    depends_on_java '8+'
  end
end
