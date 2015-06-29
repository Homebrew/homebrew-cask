cask :v1 => 'ableton-live' do
  version '9.1.9'
  sha256 '7a4da8531180afa8c7930a961289da1a0df567a8495e7ec205c7780f85dd0fda'

  url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_suite_#{version}_64.dmg"
  name 'Ableton Live'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version[0]} Suite.app"

  zap :delete => '~/Library/*/*[Aa]bleton*',
      :rmdir => '~/Music/Ableton/Factory Packs'
      #:trash => '~/Music/Ableton/User Library'
end
