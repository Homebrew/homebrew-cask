cask :v1 => 'squire' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3.amazonaws.com/Squire_Mac_Builds/Squire.dmg'
  name 'Squire'
  appcast 'http://www.sylion.com/squireapp/sparkle/SquireMac/appcastSquireMac.xml',
          :sha256 => '05ed2a267054a31dd81c36b9e9e2a05fb26f40d9c913427134154f4b9147949a'
  homepage 'http://squireapp.com'
  license :commercial

  app 'Squire.app'
end
