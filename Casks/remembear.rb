cask 'remembear' do
  version '1.4.1'
  sha256 '61ba5784bdeeb46f59fe32fba28ef143e13f733b974f485dc6a4b88e49c36a2f'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
