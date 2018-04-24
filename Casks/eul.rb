cask 'eul' do
  version '0.34'
  sha256 '4f603d2408b18c8dd6f854bc1b3229f319fd2c7f1652b685d10ac535422a3dbe'

  url "https://github.com/eul-im/eul/releases/download/v#{version}/eul_mac.zip"
  name 'eul'
  homepage 'https://eul.im/'

  app 'eul.app'
end
