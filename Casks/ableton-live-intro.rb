cask 'ableton-live-intro' do
  version '10.0.4'
  sha256 'baacf60916938a7013ad567fa220263fb566e60d63d01d66defc38fd8481835b'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
