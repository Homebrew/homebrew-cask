cask 'comma-chameleon' do
  version '0.4.8'
  sha256 'f872ad9f95b9e303bac53636307374e591d2c61a7fd8600d7586c605065925ab'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: '6ec4b53671ef606c5cf28756cac4199a83c41e4d985b6b04bbbe01a1a7db922a'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end
