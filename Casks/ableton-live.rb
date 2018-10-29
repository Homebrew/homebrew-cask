cask 'ableton-live' do
  version '10.0.5'
  sha256 'f257606a0a36450e49ec78996363972fc58ba945f5e6ea9548906f18c94590ec'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
