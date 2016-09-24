cask 'cornerstone' do
  version '3.0.2'
  sha256 'a35640b034550aa886ab5bb38e82c152c05191ecac343f5e80705c7c4d2cfce3'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed3.php',
          checkpoint: '9b17a3966aa171757fb3537a3c2c0c0acc07f9fe85bcc3276dd19d45340c5aea'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
