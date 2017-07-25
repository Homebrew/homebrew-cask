cask 'amm' do
  version '0.4.2'
  sha256 '95286bf5237c31bb8c8bff5013aca580625d499a96889251e049bbd0c32f38d8'

  url "https://github.com/15cm/AMM/releases/download/v#{version}/AMM_v#{version}.dmg"
  appcast 'https://github.com/15cm/AMM/releases.atom',
          checkpoint: 'acc5467eb73151d7f5e848ddf38308e51c2ab71d57674de50603a45230074310'
  name 'AMM'
  homepage 'https://github.com/15cm/AMM'

  app 'AMM.app'
end
