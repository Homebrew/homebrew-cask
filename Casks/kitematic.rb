cask :v1 => 'kitematic' do
  version '0.4.0'
  sha256 'bacc15d30c92cd2592dc3b553b830098f7b87fd39c92f5580f20081a7eb499f2'

  url "https://s3.amazonaws.com/kite-installer/Kitematic-#{version}.zip"
  homepage 'https://kitematic.com/'
  license :unknown

  app 'Kitematic.app'
end
