cask 'play' do
  version '2.0.15'
  sha256 'd1dc43949faf7ad88ea5ecb6004ca2b075272f51972916cb5b4b9a747cfc2a5c'

  # github.com/pmsaue0/play was verified as official when first introduced to the cask
  url "https://github.com/pmsaue0/play/releases/download/v#{version}/play_#{version}.dmg.zip"
  appcast 'https://github.com/pmsaue0/play/releases.atom',
          checkpoint: 'bc659ebb278c9e035c1970c1f277ff225a5736c12fc91838d34fae76d0af2f36'
  name 'Play'
  homepage 'https://pmsaue0.github.io/play/'

  app 'Play.app'

  zap trash: [
               '~/Library/Application Support/Play',
               '~/Library/Caches/Play',
             ]
end
