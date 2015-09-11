cask :v1 => 'apache-directory-studio' do
  version '2.0.0.v20150606-M9'
  sha256 '9eca84d081a500fec84943600723782a6edac05eeab6791fe8a964e49c6d834e'

  # apache.org is the official download host per the vendor homepage
  url "http://www.us.apache.org/dist/directory/studio/#{version}/ApacheDirectoryStudio-#{version}-macosx.cocoa.x86_64.tar.gz"
  name 'Apache Directory Studio'
  homepage 'https://directory.apache.org/studio/'
  license :apache

  app 'ApacheDirectoryStudio.app'

  zap :delete => '~/.ApacheDirectoryStudio'
end
