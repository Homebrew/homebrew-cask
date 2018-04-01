cask 'ableton-live-intro' do
  version '10.0.1'
  sha256 '2fe0c5b1ca1892398e3155def1704f25c0054e12c668699a879089acdd991f5e'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
