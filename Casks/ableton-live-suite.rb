cask 'ableton-live-suite' do
  version '10.0.2'
  sha256 '94df1bcc1c5cc69a739aa1bf0eaac1651a528d37dbe3c62314d6937456ba6fb4'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
