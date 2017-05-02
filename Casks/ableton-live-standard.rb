cask 'ableton-live-standard' do
  version '9.7.2'
  sha256 '3f2a424dcc6680246f27bf1f759455426005321229cfb03f32787df8b5d39211'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
