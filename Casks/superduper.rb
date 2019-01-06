cask 'superduper' do
  if MacOS.version <= :mavericks
    version '3.1.1'
    sha256 '6639cf292fe391cfb1c2283fc3614c462a9859910a4c85e190119548d3c32c31'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url "https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!#{version}.dmg"
  else
    version '3.2.4,118'
    sha256 'a6af47ea7df3903ba7195dfb25eb57d4150b02d8a910c0a52ab7297fb588e3e9'

    # amazonaws.com/shirtpocket/SuperDuper was verified as official when first introduced to the cask
    url 'https://s3.amazonaws.com/shirtpocket/SuperDuper/SuperDuper!.dmg'
  end

  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100'
  name 'SuperDuper!'
  homepage 'https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
