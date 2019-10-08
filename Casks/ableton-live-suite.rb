cask 'ableton-live-suite' do
  version '10.1.1'
  sha256 '9770ebe0f514339fbacd4de114f93a4fd978f26f388f9839162b38a304e74aae'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
