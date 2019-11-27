cask 'superduper' do
  if MacOS.version <= :mavericks
    version '3.1.1'
    sha256 '6639cf292fe391cfb1c2283fc3614c462a9859910a4c85e190119548d3c32c31'

    # shirtpocket.s3.amazonaws.com/SuperDuper was verified as official when first introduced to the cask
    url "https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!#{version}.dmg"
  else
    version '3.2.6,120'
    sha256 '1cfab569065e254811253bbf9d60b8e67be6a8800215db6bca03aa777dda8261'

    # shirtpocket.s3.amazonaws.com/SuperDuper was verified as official when first introduced to the cask
    url 'https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!.dmg'
  end

  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100',
          configuration: version.after_comma
  name 'SuperDuper!'
  homepage 'https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
