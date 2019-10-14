cask 'synthesia' do
  version '10.6'
  sha256 'b8dd1037eea005b1b893dbb70a1ab0f49c88b44d51421c33b35e33cc90288447'

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
