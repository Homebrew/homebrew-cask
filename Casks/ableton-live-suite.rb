cask 'ableton-live-suite' do
  version '10.0.1'
  sha256 '73f8b7d9c2e058639466cbb765e6e1610f97f542745e2c69567d7bf55a407e11'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Suite.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
