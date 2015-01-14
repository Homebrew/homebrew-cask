cask :v1 => 'duet' do
  version '1.1.3'
  sha256 '2f75a52d8849079bbc580a1ca843be1ea88a44df9afbcdb2d6d872efa4481800'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-1.amazonaws.com/duetmac/DuetDisplay.zip'
  homepage 'http://www.duetdisplay.com/'
  license :unknown

  app 'duet.app'

  uninstall :kext => 'com.karios.driver.DuetDisplay',
            :delete => '/usr/libexec/coreduetd'
end
