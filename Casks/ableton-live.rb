cask 'ableton-live' do
  version '9.2.1'

  if Hardware::CPU.is_32_bit?
    sha256 'ce37b5ec6c2f717c8db83e39a75398e462bd131d39df5a559b265fa27eba38f6'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_32.dmg"
  else
    sha256 '30599a21a857be855e687e3d5a162cefb84ff98491bc2757d0580e811114295e'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  end

  name 'Ableton Live'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version.to_i} Trial.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
  #:trash => '~/Music/Ableton/User Library'
end
