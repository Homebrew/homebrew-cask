cask 'apache-directory-studio' do
  version '2.0.0.v20151221-M10'
  sha256 'b27d116ea6b79268a74ae5057bd542813e186a888c2b4abedd6a2eb83fc2a0d5'

  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'

  app 'ApacheDirectoryStudio.app'

  zap delete: '~/.ApacheDirectoryStudio'
end
