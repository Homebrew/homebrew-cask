cask 'ableton-live' do
  version '9.2.1'
  sha256 '30599a21a857be855e687e3d5a162cefb84ff98491bc2757d0580e811114295e'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://ableton.com/en/live'

  app "Ableton Live #{version.major} Trial.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  # trash: '~/Music/Ableton/User Library'
end
