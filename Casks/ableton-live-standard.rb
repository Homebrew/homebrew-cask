cask 'ableton-live-standard' do
  version '10.1.6'
  sha256 '5433febb9ab9edb35d635f7cc34f1d93b400ea7b7cea1b1169aa6ce3626e1926'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
