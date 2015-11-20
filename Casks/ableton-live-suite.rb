cask :v1 => 'ableton-live-suite' do
  version '9.5'

  if Hardware::CPU.is_32_bit?
    sha256 '229e421cebd84673a351196d66e6bc92b336b58f5459979e4a6f1741f93d2891'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_32.dmg"
  else
    sha256 'c3fc7fbd79fb30a6d4f2b924f2c1015438d686c2fb3f2bf23f362dfd4244f072'
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
