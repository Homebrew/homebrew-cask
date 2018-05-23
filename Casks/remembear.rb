cask 'remembear' do
  version '1.0.1'
  sha256 '50085d0f1c03dc760863991360ef70b591f858d50d744aa7463624073ea80694'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml',
          checkpoint: '051a54637054a24e1dc5475f88d224dd08b12bec90a45d84462f8235b6bd3842'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
