cask 'remembear' do
  version '1.4.9'
  sha256 '30cf92cb4e0c540ab30d8af03738a8d13d60a8cff45fe45f46e0b13038c6b213'

  # remembear.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://remembear.s3.amazonaws.com/app/release/downloads/macOS/RememBear-#{version}.dmg"
  appcast 'https://remembear.s3.amazonaws.com/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
