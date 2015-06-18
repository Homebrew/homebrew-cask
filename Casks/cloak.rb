cask :v1 => 'cloak' do
  version '2.0.11'
  sha256 '8dbebffcfe6db8b20a15ce11231fea248a42281cde73d08b661b1e9861ec7eed'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
