cask 'easysimbl' do
  version '1.7.1'
  sha256 'd8afe8bfd7ea32f6d8ad1d4438ddc9ce2ad47e66942e6b6e900807daa59ddd50'

  url "https://github.com/norio-nomura/EasySIMBL/releases/download/EasySIMBL-#{version}/EasySIMBL-#{version}.zip"
  appcast 'https://github.com/norio-nomura/EasySIMBL/releases.atom',
          checkpoint: 'd4dbce66da553b7cd56a005c0d6e154f87ffe8bf0728b530e3a18b4f00915572'
  name 'EasySIMBL'
  homepage 'https://github.com/norio-nomura/EasySIMBL'
  license :gpl

  app 'EasySIMBL.app'

  zap delete: [
                '~/Library/Preferences/com.github.norio-nomura.EasySIMBL.plist',
                '~/Library/Preferences/com.github.norio-nomura.SIMBL-Agent.plist',
              ]
end
