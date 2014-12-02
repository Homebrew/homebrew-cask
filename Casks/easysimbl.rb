cask :v1 => 'easysimbl' do
  version '1.7.1'
  sha256 'd8afe8bfd7ea32f6d8ad1d4438ddc9ce2ad47e66942e6b6e900807daa59ddd50'

  url "https://github.com/norio-nomura/EasySIMBL/releases/download/EasySIMBL-#{version}/EasySIMBL-#{version}.zip"
  homepage 'https://github.com/norio-nomura/EasySIMBL'
  license :gpl

  app 'EasySIMBL.app'

  zap :delete => [
                  '~/Library/Preferences/com.github.norio-nomura.EasySIMBL.plist',
                  '~/Library/Preferences/com.github.norio-nomura.SIMBL-Agent.plist',
                 ]
end
