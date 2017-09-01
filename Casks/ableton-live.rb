cask 'ableton-live' do
  version '9.7.4'
  sha256 '34f67535edcad7053a1078aefbd571867c1f089520a3b6839f042d8e2e6a70fb'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
end
