cask 'ableton-live-intro' do
  version '10.0.5'
  sha256 '524d8aa918ad6f155a7a3c2352e49605e6e4ba6f4aa5171031e0e71c17a0ad51'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
