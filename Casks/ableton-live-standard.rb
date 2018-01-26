cask 'ableton-live-standard' do
  version '9.7.5'
  sha256 'db7953c5f3fa52c331c7186e97b70d0d22d269a02ed054014025b2ddde72d130'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
