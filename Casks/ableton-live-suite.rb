cask 'ableton-live-suite' do
  version '9.7.5'
  sha256 '12ad48293cd326a1d1982e2877a50cd21ee4a747d987ad68cead23081287aaea'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
