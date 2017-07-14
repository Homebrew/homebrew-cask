cask 'ableton-live-suite' do
  version '9.7.3'
  sha256 '97a8083b2b8776421a4f6a67f5074ce2f3b36def6b01f7d16e28ffdd86354dac'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version[0]} Suite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
