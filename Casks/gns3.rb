cask :v1 => 'gns3' do
  version '1.2.3'
  sha256 '599f16f78b72837e22d4109a2fcbd5f74c3af42a6f65d9f9a4b4f0e3239beff3'

  url "http://54dbd800be60307ab3fb-af183b57d94afbc9487771ea4c2db268.r84.cf5.rackcdn.com/GNS3-#{version}.dmg"
  name 'GNS3'
  homepage 'http://www.gns3.com/'
  license :gpl

  app 'GNS3.app'
end
