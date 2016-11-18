cask 'swiftybeaver' do
  version '1.0.5'
  sha256 '0d453136582f55737e5540a8929781513d7dd97ece5c120fa7df8a7d8d728b76'

  url "https://cdn.swiftybeaver.com/SBMac-#{version}.zip"
  appcast 'https://cdn.swiftybeaver.com/sbmac-appcast.xml',
          checkpoint: '759c9911aab9aa3be2877094fdf332615dd32a50485209e5eaf8758a28fd2f29'
  name 'SwiftyBeaver'
  homepage 'https://swiftybeaver.com/'

  app 'SwiftyBeaver.app'
end
