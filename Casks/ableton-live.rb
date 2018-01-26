cask 'ableton-live' do
  version '9.7.5'
  sha256 'b10d610377be15eb57c4a228c127381dae38e45c58273bc3936648a2e60ac2b9'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
