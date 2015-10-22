cask :v1 => 'ipartition' do
  version '3.4.5'
  sha256 '0b66c44dfb4b8525056b68bfd8f4d56fe4b78fd0e5e4705659bfd242e2722319'

  url "http://coriolis-systems.com/downloads/iPartition-#{version}.zip"
  name 'iPartition'
  homepage 'http://coriolis-systems.com/iPartition.php'
  license :commercial

  app 'iPartition.app'
end
