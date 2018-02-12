cask 'remembear' do
  version '0.4.2'
  sha256 '6f07a01e4b9f22c0a6359c81ee5ad0fec8266ae8d99ba6ae326b79ff123d08fa'

  # amazonaws.com/tunnelbear/downloads/mac/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/remembear/RememBear-#{version}.zip"
  appcast 'https://tunnelbear.s3.amazonaws.com/downloads/mac/remembear/appcast-beta.xml',
          checkpoint: 'd1aa1b758e2dea1903f245fa89307f478011cc5ee123262f9bef2aed23007a69'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
