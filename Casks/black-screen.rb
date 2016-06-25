cask 'black-screen' do
  version '0.1.4'
  sha256 'b23b434e6f389404839cb4278ce63bcdce805c2b47d886262adef2153ea7f8c8'

  url "https://github.com/shockone/black-screen/releases/download/v#{version}/black-screen-#{version}-mac.zip"
  appcast 'https://github.com/shockone/black-screen/releases.atom',
          checkpoint: 'd7db88967ca78df61f004a91f509ea724e81d1b4ffeaf522f6a1fd00e7ad9e3c'
  name 'Black Screen'
  homepage 'https://github.com/shockone/black-screen'
  license :mit

  app 'Black Screen.app'
end
