cask 'mountain' do
  version :latest
  sha256 :no_check

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml',
          :sha256 => '99c6503bdd3a65a99b3d45fe15d509f167e90c7295355f20f501202d02810986'
  name 'Mountain'
  homepage 'http://appgineers.de/mountain/'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Mountain.app'
end
