cask 'ableton-live' do
  version '10.0.2'
  sha256 'ac9c42905c2c94364f2dd4a89df785b9a97676f70508f329aee867c1d8bf874f'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
