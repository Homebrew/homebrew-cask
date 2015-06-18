cask :v1 => 'stellarium' do
  version '0.13.2'
  sha256 '29c253f4e14031eee4772412fc41b478069c83b5f71fd5106d15f47793fa9b96'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/stellarium/Stellarium-#{version}.dmg"
  name 'Stellarium'
  homepage 'http://stellarium.org'
  license :gpl

  app 'Stellarium.app'
end
