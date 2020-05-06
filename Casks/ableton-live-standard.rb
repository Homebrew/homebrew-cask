cask 'ableton-live-standard' do
  version '10.1.13'
  sha256 '5b61ebeaee0906618ff88311393d8ddce0d05ec2ff7c4242671e1234c17c409c'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
