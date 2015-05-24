cask :v1 => 'istumbler' do

  if MacOS.release <= :mountain_lion
    version '99'
    sha256 'ac30e44fe86132c93a5b33699de00e86628e2f51a42015d2225b91521a198b63'
    url "http://istumbler.net/archive/release#{version}/downloads/iStumbler-#{version}.zip"
  elsif MacOS.release == :mavericks
    version '100'
    sha256 '71f6a6b0e255a853664ed4900835a42f2d23dcb05de35acfb3ac2ec1c5fb2edc'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  else
    version '101'
    sha256 '71197bc2e00da263f1b33703aa857a0720e7cd7005315f286cafb250db9172de'
    url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  end

  name 'iStumbler'
  appcast 'https://istumbler.net/feeds/appcast.rss',
          :sha256 => '6f5814a0cd44fb1825657a2cca3e91dd1038bd1a4796c79f40de5ec82105ab2d'
  homepage 'http://istumbler.net/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iStumbler.app'
end
