cask 'ableton-live' do
  version '10.0.1'
  sha256 '36abc5d8b9900fff2338ddc28bc854f98f40804958cf3fa9e3d812459f3f0263'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
