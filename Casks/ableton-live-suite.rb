cask 'ableton-live-suite' do
  version '10.0.3'
  sha256 '837c412594fea89bf2132792870eabe4f42776e0ea4f8faa54861885061a6d44'

  url "https://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  appcast "https://www.ableton.com/en/release-notes/live-#{version.major}/"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
