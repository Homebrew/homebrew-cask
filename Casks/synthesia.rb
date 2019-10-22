cask 'synthesia' do
  version '10.6'
  sha256 'cf5a2388d7097faa03bdf3079a8f859b8d7c1f27d0e1b59573930a5e776ab190'

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
