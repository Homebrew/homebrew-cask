cask 'eul' do
  version '0.34'
  sha256 '4f603d2408b18c8dd6f854bc1b3229f319fd2c7f1652b685d10ac535422a3dbe'

  # github.com/eul-im/eul was verified as official when first introduced to the cask
  url "https://github.com/eul-im/eul/releases/download/v#{version}/eul_mac.zip"
  appcast 'https://github.com/eul-im/eul/releases.atom',
          checkpoint: 'a7a4458a1c7ecfa621cbf4bed1dec11a93b842a0aba67de3b170eba715eb3f3e'
  name 'eul'
  homepage 'https://eul.im/'

  app 'eul.app'
end
