cask 'ableton-live' do
  version '10.1.4'
  sha256 'bedd8171a8d71a1d84c7ebcda797d06dbdf49447b46c49f7873c4b38fd035b3d'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
