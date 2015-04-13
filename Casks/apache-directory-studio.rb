cask :v1 => 'apache-directory-studio' do
  version '2.0.0.v20130628'
  sha256 '60914cc67f893afdc8bf537fa67a48cb7cd96357e7d28595a2c22a74a19f02e3'

  # apache.org is the official download host per the vendor homepage
  url "http://www.us.apache.org/dist/directory/studio/dist/#{version}/ApacheDirectoryStudio-macosx-x86_64-#{version}.dmg"
  name 'Apache Directory Studio'
  homepage 'http://directory.apache.org/studio/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Apache Directory Studio.app'

  zap :delete => '~/.ApacheDirectoryStudio'
end
