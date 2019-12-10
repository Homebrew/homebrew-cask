cask 'synthesia' do
  version '10.6'
  sha256 '15f15bbee05aea799fc2872f9253ab051444118c12fa1ae740a49bb7d24acde6'

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
