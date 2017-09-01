cask 'ableton-live-standard' do
  version '9.7.3'
  sha256 '8f33eb39a331cdd4456885c7a5a94372d9bef7d664ead431fe2845633b39f9a2'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
end
