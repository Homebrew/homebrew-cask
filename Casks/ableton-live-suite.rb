cask :v1 => 'ableton-live-suite' do
  version '9.2'

  if Hardware::CPU.is_32_bit?
    sha256 '1b88c7aafefb5ca175fabf6cc6411570fee88ec8c8835d5e41c90cd5ce785539'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_32.dmg"
  else
    sha256 'f9ff7c368d1715f51b3c9a0c3c66613c802d3594e083f69a049c922a52e3cb73'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  end

  name 'Ableton Live Suite'
  homepage 'http://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version[0]} Suite.app"

  zap :delete => '~/Library/*/*[Aa]bleton*',
      :rmdir => '~/Music/Ableton/Factory Packs'
      #:trash => '~/Music/Ableton/User Library'
end
