cask :v1 => 'battery-time-remaining' do
  version '2.0.2'
  sha256 '4975e8e293e4e6b2114cdbbf64d046b3255c62d981e25f0044229348c4f92a87'

  url "http://yap.nu/battery-time-remaining/download/Battery%20Time%20Remaining%202-#{version}.zip"
  homepage 'http://yap.nu/battery-time-remaining/'
  license :apache

  app 'Battery Time Remaining 2.app'
end
