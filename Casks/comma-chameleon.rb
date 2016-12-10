cask 'comma-chameleon' do
  version '0.4.5'
  sha256 '498b0e938e4bb3aa93ce47e7ab801219dbcacf1e1cb912dcf5924cc591a2a08e'

  # github.com/theodi/comma-chameleon was verified as official when first introduced to the cask
  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/comma-chameleon-darwin-x64.tar.gz"
  appcast 'https://github.com/theodi/comma-chameleon/releases.atom',
          checkpoint: 'c5b8f4dc7bfb7099036c6c23a139884537020f2b876eaf69eecb1ad1a130a770'
  name 'Comma Chameleon'
  homepage 'https://comma-chameleon.io/'

  app 'comma-chameleon-darwin-x64/comma-chameleon.app'
end
