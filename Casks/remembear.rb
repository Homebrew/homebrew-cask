cask 'remembear' do
  version '1.4.8'
  sha256 '236b123a6667ba6823cbe9ef251e852411d1f227a767b8f419c1fbf62c2c5040'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
