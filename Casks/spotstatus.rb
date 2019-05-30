cask 'spotstatus' do
  version '1.2'
  sha256 'c8993984b5991d4a975a926ede8ad116f42ba7f4a9a7d994d756d661048a494c'

  url 'https://github.com/joshspicer/SpotStatus/releases/download/v1.2/SpotStatus_1.2.zip'
  appcast 'https://github.com/joshspicer/SpotStatus/releases.atom'
  name 'SpotStatus'
  homepage 'https://github.com/joshspicer/SpotStatus'

  app 'SpotStatus.app'
end
