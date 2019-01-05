cask 'superduper' do
  if MacOS.version <= :snow_leopard
    version '2.7.1'
    sha256 'e851bdf522bf1ab69bc2baf2af52fac9b7a31199fc9fb1b32ac49551bf6a8f2f'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!#{version}.dmg"
  elsif MacOS.version <= :lion
    version '2.8'
    sha256 '32cd12cda784d7cd995386a96ec17d75900832e338edcda59b250d12251556e5'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!#{version}.dmg"
  elsif MacOS.version <= :mountain_lion
    version '2.9.2'
    sha256 '0501dc7215a5059c124deba30e9cc49197abc40a38bf1017b7a05fad43bbed8a'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '3.1.1'
    sha256 '6639cf292fe391cfb1c2283fc3614c462a9859910a4c85e190119548d3c32c31'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!#{version}.dmg"
  else
    version '3.2.4,118'
    sha256 'a6af47ea7df3903ba7195dfb25eb57d4150b02d8a910c0a52ab7297fb588e3e9'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
    appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100'
  end

  name 'SuperDuper!'
  homepage 'https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
