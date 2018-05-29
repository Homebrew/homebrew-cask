cask 'ableton-live-intro' do
  version '10.0.2'
  sha256 '9c5067caac96a0826b500333fca6498f72617fe6cdeaf7336d45ba3ede734a51'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
