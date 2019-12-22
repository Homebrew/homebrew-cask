cask 'synthesia' do
  version '10.6'
  sha256 '54629edea60c84825764fab21d2f6570aced4a3c9af3322604b7b47164173018'

  # synthesia.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  appcast 'https://feeds.feedburner.com/SynthesiaNews'
  name 'Synthesia'
  homepage 'https://www.synthesiagame.com/'

  app 'Synthesia.app'

  zap trash: [
               '~/Library/Application Support/Synthesia',
               '~/Library/Autosave Information/com.synthesiallc.synthesia.plist',
               '~/Library/Saved Application State/com.synthesiallc.synthesia.savedState',
             ]
end
