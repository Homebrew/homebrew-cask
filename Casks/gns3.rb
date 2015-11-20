cask :v1 => 'gns3' do
  version '1.3.11'
  sha256 'baece9951303bca6e887be5fdce730fcc238350446203e227f39906dbd9010f8'

  url "https://github.com/GNS3/gns3-gui/releases/download/v#{version}/GNS3-#{version}.dmg"
  name 'GNS3'
  homepage 'http://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
