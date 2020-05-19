cask 'ableton-live-standard' do
  version '10.1.14'
  sha256 'e3b069dfff73fcef2bc2cf0fada2a6ee3270e2b0f1da0b7457187089e5f14e95'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
