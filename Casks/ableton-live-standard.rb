cask 'ableton-live-standard' do
  version '10.1.1'
  sha256 'f5ebd57320539630f2bd8966566f2a7061b5c167e1ff2fad4da2b73cd105ee2c'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
