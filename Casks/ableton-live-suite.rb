cask 'ableton-live-suite' do
  version '9.6'

  if Hardware::CPU.is_32_bit?
    sha256 '48e29692b5e04b6f141cdcc71a7d9070d5c67bae7ee35c12f22d204c67204aac'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_32.dmg"
  else
    sha256 'eb1c8991561059c2a1724996dc5b1f744762be002f676703905f432331071dac'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  end

  name 'Ableton Live Suite'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version[0]} Suite.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
