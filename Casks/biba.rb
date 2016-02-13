cask 'biba' do
  version '3.8.3806'
  sha256 '848cdf5247270f56b8d9bdc337bf1d0d84f9f2f42ab5757365c19c7dfd2fa0f4'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://api.biba.com/osx_downloads/appcast',
          checkpoint: 'cd8f08a00f612b0f8b85c8b9fce653ed79a44436b46f7044ef8d6dd62be5b95d'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
