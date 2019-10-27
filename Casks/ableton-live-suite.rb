cask 'ableton-live-suite' do
  version '10.1.3'
  sha256 'dda4f391b34b8f98376c1630988fb8125aff5919ee3a0b85b622b6da1519efbb'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
