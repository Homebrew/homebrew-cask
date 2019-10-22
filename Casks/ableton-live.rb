cask 'ableton-live' do
  version '10.1.3'
  sha256 '9e0766d403e4381b653c257e22b6ae47e108ddb61f345b57d4d2573efb807efa'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Trial.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
