cask 'ableton-live-suite' do
  version '9.7'
  sha256 '35fa16a2c703d458fc005413e81e7fccd3ebf18eff5bffea91eb9165db42c400'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live Suite'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version[0]} Suite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
