cask 'ableton-live' do
  version '9.7.1'
  sha256 '6f6dfd07da7ab2a539293fc6591b9c4d9ef29daacf622aef17d2408328513b72'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  # trash: '~/Music/Ableton/User Library'
end
