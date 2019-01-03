cask 'remembear' do
  version '1.2.2'
  sha256 '94c49a796d0f9aef6cf89a84cc9646fa5075614f9f01a8995095de74069be38c'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
