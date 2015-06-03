cask :v1 => 'cloak' do
  version '2.0.11'
  sha256 '8dbebffcfe6db8b20a15ce11231fea248a42281cde73d08b661b1e9861ec7eed'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/static.getcloak.com/osx/updates/Release/Cloak-#{version}.dmg"
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
