cask 'easysimbl' do
  version '1.7.1'
  sha256 'd8afe8bfd7ea32f6d8ad1d4438ddc9ce2ad47e66942e6b6e900807daa59ddd50'

  url "https://github.com/norio-nomura/EasySIMBL/releases/download/EasySIMBL-#{version}/EasySIMBL-#{version}.zip"
  appcast 'https://github.com/norio-nomura/EasySIMBL/releases.atom',
          checkpoint: 'd65c3d782fe6e843622e5296ce476f0632a973e7e6c1027b2b25f91492838258'
  name 'EasySIMBL'
  homepage 'https://github.com/norio-nomura/EasySIMBL'

  app 'EasySIMBL.app'

  zap trash: [
               '~/Library/Preferences/com.github.norio-nomura.EasySIMBL.plist',
               '~/Library/Preferences/com.github.norio-nomura.SIMBL-Agent.plist',
             ]
end
