cask :v1 => 'macid' do
  version '1'
  sha256 '82b410b21599fe5a56011ab6152e91f5b8b17fb47924f2802abaaad2b373ae70'

  url "http://macid.co/app/#{version}/6/MacID-for-OS-X.zip"
  name 'MacID'
  homepage 'http://macid.co/'
  license :gratis 

  app 'MacID.app'
end
