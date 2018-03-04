cask 'remembear' do
  version '0.4.4'
  sha256 '8f7d1e57765a485d4904cd1f57691e4087e80c7a25d17b84fa9247c147ec53d2'

  # amazonaws.com/tunnelbear/downloads/mac/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/remembear/RememBear-#{version}.zip"
  appcast 'https://tunnelbear.s3.amazonaws.com/downloads/mac/remembear/appcast-beta.xml',
          checkpoint: '9933b126550d30717d20878ff3c0be745b36cae2d5e9eca88d98661ec9a2aaa8'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
