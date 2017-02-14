cask 'ableton-live-standard' do
  version '9.5'
  sha256 '5935fae913d2759e474f3c606ca247d90af419a4c24903de3f2f91f7959c3abe'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
