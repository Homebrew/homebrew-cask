cask 'biba' do
  version '3.14.3964'
  sha256 '81015adb540b6a24358e646f3cb2dc01ae468d7d12ed0ab2e83668132a5be31e'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: 'f58c45e8bf7621a96e2f888966917975836c949badea7e7937dcd6fad27143dc'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
