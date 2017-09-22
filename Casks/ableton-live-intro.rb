cask 'ableton-live-intro' do
  version '9.7.4'
  sha256 '7062febe6ac590b48a936de876f08fb7e91b38a14016c5dd885a710991eb21f0'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
end
