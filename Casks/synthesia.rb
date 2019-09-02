cask 'synthesia' do
  version '10.5.1'
  sha256 'f129e8b90921399140d7e2df2dd4312937f58c8b2d17e6693b968d82ea7e15ed'

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
