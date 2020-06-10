cask 'superduper' do
  if MacOS.version <= :mavericks
    version '3.1.1'
    sha256 '6639cf292fe391cfb1c2283fc3614c462a9859910a4c85e190119548d3c32c31'

    # shirtpocket.s3.amazonaws.com/SuperDuper/ was verified as official when first introduced to the cask
    url "https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!#{version}.dmg"
  else
    version '3.3.1,121'
    sha256 '589d2ae96d8d130e7a7de2124f6f8c12ab49a21b96e6260df734d39ebb896433'

    # shirtpocket.s3.amazonaws.com/SuperDuper/ was verified as official when first introduced to the cask
    url 'https://shirtpocket.s3.amazonaws.com/SuperDuper/SuperDuper!.dmg'
  end

  appcast 'https://versioncheck.blacey.com/superduper/version.xml?VSN=100',
          configuration: version.after_comma
  name 'SuperDuper!'
  homepage 'https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html'

  app 'SuperDuper!.app'

  zap trash: '~/Library/Application Support/SuperDuper!'
end
