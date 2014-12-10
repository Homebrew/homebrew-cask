cask :v1 => 'cloak' do
  version '2.0.8'
  sha256 '7c26d9d835b8d6d190581ac2fb3720d305e280cce916e0cbaba27c941ad66c01'

  url "https://s3.amazonaws.com/static.getcloak.com/osx/updates/Release/Cloak-#{version}.dmg"
  homepage 'https://www.getcloak.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Cloak.app'
end
