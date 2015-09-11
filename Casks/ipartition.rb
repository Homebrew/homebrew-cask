cask :v1 => 'ipartition' do
  version :latest
  sha256 :no_check

  url 'http://coriolis-systems.com/iPartition/'
  name 'iPartition'
  homepage 'http://coriolis-systems.com/iPartition.php'
  license :commercial

  app 'iPartition Demo.app' => 'iPartition.app'
end
