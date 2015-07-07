cask :v1 => 'ableton-live' do
  version '9.2'

  if Hardware::CPU.is_32_bit?
    sha256 '76af66fabf29349a86d86ba07c42756ed0edf36c0b2f4df02f715509997187e5'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_32.dmg"
  else
    sha256 '6ef19ad81674dbfb842e6964961d865ebe29c6399581d47efb1d77cf7db2cf86'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  end

  name 'Ableton Live'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version[0]} Suite.app"

  zap :delete => '~/Library/*/*[Aa]bleton*',
      :rmdir => '~/Music/Ableton/Factory Packs'
      #:trash => '~/Music/Ableton/User Library'
end
