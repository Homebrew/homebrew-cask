cask 'ableton-live-lite' do
  version '9.5'

  if Hardware::CPU.is_32_bit?
    sha256 '2e0aa6d581f8b1bbead38ac0a35bb42e691e0e53959eb6aa0372a1d5ee56ae12'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_32.dmg"
  else
    sha256 '054895bf3593bf5849921d3f83791602accc19d6157e8408f369352e3bb2cf56'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_lite_#{version}_64.dmg"
  end

  name 'Ableton Live Lite'
  homepage 'https://www.ableton.com/en/products/live-lite/'
  license :commercial
  caveats <<-EOT
This app is not sold separately.
It comes bundled with hardware and needs a product key from that hardware's product card.
General public should use ableton-live instead.
EOT

  app "Ableton Live #{version.to_i} Lite.app"

  zap :delete => '~/Library/*/*[Aa]bleton*',
      :rmdir => '~/Music/Ableton/Factory Packs'
      #:trash => '~/Music/Ableton/User Library'
end
