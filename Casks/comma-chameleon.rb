cask 'comma-chameleon' do
  version '0.5.0'
  sha256 'b63d8a51ba8535555f28eda9ff82c9ff76afe9b4d649b3b8453a8802715220d7'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: '6db5403267c51a690ce811cc015391a3278eb8c8a062c537eb29a805a22a4c18'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end
