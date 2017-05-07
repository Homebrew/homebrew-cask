cask 'easysimbl' do
  version '1.7.1'
  sha256 'd8afe8bfd7ea32f6d8ad1d4438ddc9ce2ad47e66942e6b6e900807daa59ddd50'

  url "https://github.com/norio-nomura/EasySIMBL/releases/download/EasySIMBL-#{version}/EasySIMBL-#{version}.zip"
  appcast 'https://github.com/norio-nomura/EasySIMBL/releases.atom',
          checkpoint: '3c41b4f16d41f691e69c6f465d6bd4b67129aeca26d037268019673b611c8f63'
  name 'EasySIMBL'
  homepage 'https://github.com/norio-nomura/EasySIMBL'

  app 'EasySIMBL.app'

  zap delete: [
                '~/Library/Preferences/com.github.norio-nomura.EasySIMBL.plist',
                '~/Library/Preferences/com.github.norio-nomura.SIMBL-Agent.plist',
              ]
end
