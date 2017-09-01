cask 'ableton-live-suite' do
  version '9.7.4'
  sha256 '45924ea6bab5d40fc8ec4f2a0e9c21795740776ae524dfb458dc002a2f90ff36'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
end
