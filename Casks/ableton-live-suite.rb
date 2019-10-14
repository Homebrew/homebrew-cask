cask 'ableton-live-suite' do
  version '10.1.2'
  sha256 '53e284faff11a5cec01b5c5d39653160a5116580b8d639fa06f4bcdc55816f4f'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
