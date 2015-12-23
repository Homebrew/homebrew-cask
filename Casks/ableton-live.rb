cask 'ableton-live' do
  version '9.5'

  if Hardware::CPU.is_32_bit?
    sha256 '0ecc24f9953787d2de854c72201dca39e36bfd052acff233c5a8d90017afe2fe'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_32.dmg"
  else
    sha256 '8b325a06b7a69a66e4d0c87cce7d1f4f4a0f43a7e5dcf889bf4fc868b7e65f92'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_trial_#{version}_64.dmg"
  end

  name 'Ableton Live'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version.to_i} Trial.app"

  zap :delete => '~/Library/*/*[Aa]bleton*',
      :rmdir => '~/Music/Ableton/Factory Packs'
      #:trash => '~/Music/Ableton/User Library'
end
