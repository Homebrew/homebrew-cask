cask 'ableton-live' do
  version '9.7.3'
  sha256 'e37b9400515891cb8af23dbc5d3da5b7631b2152b667619704bd54d3403ff190'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  # trash: '~/Music/Ableton/User Library'
end
