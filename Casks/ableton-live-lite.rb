cask 'ableton-live-lite' do
  version '9.6'

  if Hardware::CPU.is_32_bit?
    sha256 '8aa4b0e3f6c8ca4b3355f14287cdaada722580594bcd8a7bbe160aedd9a4258f'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_32.dmg"

  else
    sha256 '271e5a7167338ddfdc8abd15abf40d02d218137f013df9d8d30267847f5e5c4c'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  end

  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/live-lite/'
  license :commercial

  app "Ableton Live #{version.to_i} Lite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end