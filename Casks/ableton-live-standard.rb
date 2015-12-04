cask :v1 => 'ableton-live-standard' do
  version '9.5'

  if Hardware::CPU.is_32_bit?
    sha256 'ae73ebf35ffc592c92d57259aec4a6a8d0be69beea1cde8dc40241f8e9bea78b'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_32.dmg"
  else
    sha256 '5935fae913d2759e474f3c606ca247d90af419a4c24903de3f2f91f7959c3abe'
    url "http://cdn2-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  end

  name 'Ableton Live Standard'
  homepage 'https://ableton.com/en/live'
  license :commercial

  app "Ableton Live #{version.to_i} Standard.app"

  zap :delete => '~/Library/*/*[Aa]bleton*',
      :rmdir => '~/Music/Ableton/Factory Packs'
      #:trash => '~/Music/Ableton/User Library'

end
