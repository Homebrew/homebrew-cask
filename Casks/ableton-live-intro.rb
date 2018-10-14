cask 'ableton-live-intro' do
  version '10.0.3'
  sha256 '70bf6aabcf82c0dd11c5eeebffd130fd32bfad67ecc55c33e5a0244fd01f82ab'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_intro_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Intro'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Intro.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
