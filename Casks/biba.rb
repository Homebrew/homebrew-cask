cask 'biba' do
  version '3.10.3851'
  sha256 '30c0522162f6c4f6be21cd9e78996fff0afa9c7c46eb7c00e48e09695d35ce85'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: 'be79a8d3ae09302eaf59df2f74758655df08a15497685adc66daaf1c93989547'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
