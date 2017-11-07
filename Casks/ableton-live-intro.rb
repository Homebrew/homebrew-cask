cask 'ableton-live-intro' do
  version '9.7.5'
  sha256 'ee0044f5651a391b04972f67ffd8fd34dc972f84d76777eb2299ced6e3573030'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
end
