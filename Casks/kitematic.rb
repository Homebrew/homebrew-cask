cask :v1 => 'kitematic' do
  version '0.3.0'
  sha256 '1f7695c23024fc5661b8d8714c3a80e8fe50bcce093ce64b0f2c4c77b70700f0'

  url "https://s3.amazonaws.com/kite-installer/Kitematic-#{version}.zip"
  homepage 'https://kitematic.com/'
  license :unknown

  app 'Kitematic.app'
end
