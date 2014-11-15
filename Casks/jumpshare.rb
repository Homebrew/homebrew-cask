cask :v1 => 'jumpshare' do
  version '1.0.25-3'
  sha256 'a2a2d44d858616965c8271dcfc177ec299e9592fed3abb795ddb81b533f6d818'

  url "https://jumpshare.com/desktop/mac/Jumpshare_#{version}.dmg"
  homepage 'https://jumpshare.com/'
  license :unknown

  app 'Jumpshare.app'
end
